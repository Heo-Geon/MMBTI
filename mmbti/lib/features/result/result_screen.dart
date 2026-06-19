import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/constants/route_paths.dart';
import '../../core/theme/mbti_theme.dart';
import '../../data/models/mbti_result.dart';
import '../../data/models/question.dart';
import '../quiz/quiz_notifier.dart';
import 'result_notifier.dart';
import 'widgets/axis_bar.dart';
import 'widgets/job_card.dart';
import 'widgets/share_card.dart';

/// 축별 메이플 맥락 양극 라벨 (left=첫 극, right=둘째 극).
const Map<MbtiAxis, (String, String)> _axisLabels = {
  MbtiAxis.ei: ('파티·길드 중심', '솔로·잠수 선호'),
  MbtiAxis.sn: ('정석 사냥·스펙업', '컨셉·실험 빌드'),
  MbtiAxis.tf: ('효율·딜량 우선', '디자인·세계관 우선'),
  MbtiAxis.jp: ('계획적 루틴', '즉흥·자유'),
};

class ResultScreen extends ConsumerStatefulWidget {
  const ResultScreen({super.key});

  @override
  ConsumerState<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> {
  final GlobalKey _cardKey = GlobalKey();
  bool _sharing = false;

  Future<void> _share(MbtiResult result) async {
    if (_sharing) return;
    setState(() => _sharing = true);
    try {
      final boundary = _cardKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary?;
      if (boundary == null) return;

      final image = await boundary.toImage(pixelRatio: 3);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      if (byteData == null) return;

      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/maple_${result.type}.png');
      await file.writeAsBytes(byteData.buffer.asUint8List());

      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(file.path)],
          text: '나의 메이플 플레이 성향: ${result.type} ${result.mapping.title}',
        ),
      );
    } finally {
      if (mounted) setState(() => _sharing = false);
    }
  }

  void _restart() {
    ref.read(quizProvider.notifier).reset();
    context.go(RoutePaths.onboarding);
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(mbtiResultProvider);

    // 결과가 없으면(직접 진입/미완료) 온보딩으로 되돌린다.
    if (result == null) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('결과를 찾을 수 없어요.'),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.go(RoutePaths.onboarding),
                child: const Text('처음으로'),
              ),
            ],
          ),
        ),
      );
    }

    final theme = Theme.of(context);
    final mapping = result.mapping;
    final accent = MbtiTheme.colorFromHex(mapping.theme.accent);
    final fill = MbtiTheme.colorFromHex(mapping.theme.fill);

    return Scaffold(
      appBar: AppBar(title: const Text('결과')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RepaintBoundary(
                key: _cardKey,
                child: ShareCard(result: result),
              ),
              const SizedBox(height: 32),
              _SectionTitle('성향 분석'),
              const SizedBox(height: 16),
              for (final axis in MbtiAxis.values) ...[
                AxisBar(
                  leftLabel: _axisLabels[axis]!.$1,
                  rightLabel: _axisLabels[axis]!.$2,
                  dominantIsLeft: (result.scores[axis] ?? 0) >= 0,
                  strengthPercent: result.strengthPercent(axis),
                  accent: accent,
                ),
                const SizedBox(height: 20),
              ],
              const SizedBox(height: 12),
              _SectionTitle('추천 직업'),
              const SizedBox(height: 16),
              JobCard(
                job: mapping.primary.job,
                desc: mapping.primary.desc,
                accent: accent,
                fill: fill,
                primary: true,
              ),
              const SizedBox(height: 12),
              Text(
                '이런 직업도 잘 어울려요',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  for (var i = 0; i < mapping.alternatives.length; i++) ...[
                    if (i != 0) const SizedBox(width: 12),
                    Expanded(
                      child: JobCard(
                        job: mapping.alternatives[i],
                        accent: accent,
                        fill: fill,
                      ),
                    ),
                  ],
                ],
              ),
              const SizedBox(height: 32),
              FilledButton.icon(
                onPressed: _sharing ? null : () => _share(result),
                style: FilledButton.styleFrom(
                  backgroundColor: accent,
                  foregroundColor: Colors.white,
                ),
                icon: _sharing
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(Icons.share, size: 20),
                label: Text(_sharing ? '준비 중...' : '결과 공유하기'),
              ),
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: _restart,
                icon: const Icon(Icons.refresh, size: 20),
                label: const Text('다시하기'),
              ),
              const SizedBox(height: 20),
              Text(
                '본 테스트는 오락용이며 공식 심리검사가 아닙니다.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

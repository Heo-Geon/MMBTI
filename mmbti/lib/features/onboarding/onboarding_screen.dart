import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/route_paths.dart';
import '../../data/repositories/quiz_repository.dart';
import '../../shared/widgets/primary_button.dart';
import '../quiz/quiz_notifier.dart';

/// 앱 소개 + 테스트 시작.
class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    // 시작 전 문항을 미리 로드해 둔다.
    final questions = ref.watch(questionsProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(flex: 2),
              const _HeroBadge(),
              const SizedBox(height: 28),
              Text(
                '나의 메이플\n플레이 성향은?',
                style: theme.textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w800,
                  height: 1.25,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 14),
              Text(
                '간단한 질문으로 플레이 스타일을 분석하고\n어울리는 직업을 추천해 드려요.',
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              const Wrap(
                spacing: 8,
                runSpacing: 8,
                alignment: WrapAlignment.center,
                children: [
                  _InfoChip(icon: Icons.quiz_outlined, label: '12문항'),
                  _InfoChip(icon: Icons.timer_outlined, label: '약 1분'),
                  _InfoChip(icon: Icons.auto_awesome, label: '16가지 유형'),
                ],
              ),
              const Spacer(flex: 3),
              PrimaryButton(
                label: '테스트 시작',
                icon: Icons.play_arrow_rounded,
                onPressed: questions.hasValue
                    ? () {
                        // 이전 결과가 남아 있지 않도록 초기화 후 진입.
                        ref.read(quizProvider.notifier).reset();
                        context.go(RoutePaths.quiz);
                      }
                    : null,
              ),
              const SizedBox(height: 16),
              Text(
                '본 테스트는 오락용이며 공식 심리검사가 아닙니다.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

/// 그라데이션 라운드 배지 안의 아이콘.
class _HeroBadge extends StatelessWidget {
  const _HeroBadge();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      width: 112,
      height: 112,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            scheme.primary,
            Color.lerp(scheme.primary, scheme.tertiary, 0.6) ?? scheme.primary,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: scheme.primary.withValues(alpha: 0.35),
            blurRadius: 28,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Icon(
        Icons.sports_esports_rounded,
        size: 56,
        color: scheme.onPrimary,
      ),
    );
  }
}

/// 정보 칩 (문항 수 등).
class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: scheme.primary),
          const SizedBox(width: 6),
          Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

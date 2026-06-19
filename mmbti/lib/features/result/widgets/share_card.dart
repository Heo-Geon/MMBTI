import 'package:flutter/material.dart';

import '../../../core/theme/mbti_theme.dart';
import '../../../data/models/mbti_result.dart';

/// 결과 히어로 카드. 공유 시 RepaintBoundary로 캡처되는 대상이기도 하다.
class ShareCard extends StatelessWidget {
  const ShareCard({super.key, required this.result});

  final MbtiResult result;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mapping = result.mapping;
    final accent = MbtiTheme.colorFromHex(mapping.theme.accent);
    final fill = MbtiTheme.colorFromHex(mapping.theme.fill);
    final icon = MbtiTheme.iconFromKey(mapping.theme.icon);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.lerp(fill, Colors.white, 0.35) ?? fill,
            fill,
          ],
        ),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(color: accent.withValues(alpha: 0.12)),
        boxShadow: [
          BoxShadow(
            color: accent.withValues(alpha: 0.16),
            blurRadius: 30,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _JobImage(asset: mapping.image, accent: accent, icon: icon),
          const SizedBox(height: 20),
          Text(
            result.type,
            style: theme.textTheme.displaySmall?.copyWith(
              color: accent,
              fontWeight: FontWeight.w900,
              letterSpacing: 4,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            mapping.title,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: accent,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            mapping.desc,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: accent.withValues(alpha: 0.9),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '메이플 플레이 성향 테스트',
            style: theme.textTheme.labelMedium?.copyWith(
              color: accent.withValues(alpha: 0.6),
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}

/// 직업 일러스트. 에셋이 없으면 테마 아이콘으로 폴백.
class _JobImage extends StatelessWidget {
  const _JobImage({
    required this.asset,
    required this.accent,
    required this.icon,
  });

  final String asset;
  final Color accent;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    const size = 140.0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: accent.withValues(alpha: 0.25),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Image.asset(
        asset,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: Color.lerp(accent, Colors.white, 0.85),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Icon(icon, size: 72, color: accent),
        ),
      ),
      ),
    );
  }
}

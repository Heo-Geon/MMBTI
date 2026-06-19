import 'package:flutter/material.dart';

/// 추천 직업 카드. [primary]면 강조 테두리, 아니면 콤팩트한 대안 카드.
class JobCard extends StatelessWidget {
  const JobCard({
    super.key,
    required this.job,
    required this.accent,
    required this.fill,
    this.desc,
    this.primary = false,
  });

  final String job;
  final String? desc;
  final Color accent;
  final Color fill;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(primary ? 20 : 14),
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: primary ? accent : accent.withValues(alpha: 0.25),
          width: primary ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (primary)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                '대표 추천',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          if (primary) const SizedBox(height: 12),
          Text(
            job,
            style: (primary
                    ? theme.textTheme.headlineSmall
                    : theme.textTheme.titleMedium)
                ?.copyWith(
              color: accent,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (desc != null) ...[
            SizedBox(height: primary ? 8 : 4),
            Text(
              desc!,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: accent.withValues(alpha: 0.85),
                height: 1.35,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

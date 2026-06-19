import 'package:flutter/material.dart';

/// 한 축의 성향을 양극 라벨 + 강도(%) 막대로 표시.
class AxisBar extends StatelessWidget {
  const AxisBar({
    super.key,
    required this.leftLabel,
    required this.rightLabel,
    required this.dominantIsLeft,
    required this.strengthPercent,
    required this.accent,
  });

  /// 첫 극(E/S/T/J) 라벨.
  final String leftLabel;

  /// 둘째 극(I/N/F/P) 라벨.
  final String rightLabel;

  final bool dominantIsLeft;
  final int strengthPercent;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final muted = theme.colorScheme.onSurfaceVariant;

    Widget label(String text, bool active) => Text(
          text,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
            color: active ? accent : muted,
          ),
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            label(leftLabel, dominantIsLeft),
            Text(
              '$strengthPercent%',
              style: theme.textTheme.labelMedium?.copyWith(
                color: accent,
                fontWeight: FontWeight.bold,
              ),
            ),
            label(rightLabel, !dominantIsLeft),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: [
              Container(
                height: 12,
                color: theme.colorScheme.surfaceContainerHighest,
              ),
              Align(
                alignment:
                    dominantIsLeft ? Alignment.centerLeft : Alignment.centerRight,
                child: FractionallySizedBox(
                  widthFactor: (strengthPercent / 100).clamp(0.0, 1.0),
                  child: Container(height: 12, color: accent),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

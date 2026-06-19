import 'package:flutter/material.dart';

/// 유형 테마(hex 문자열 / 아이콘 키)를 Flutter 타입으로 변환하는 유틸.
abstract final class MbtiTheme {
  /// `#RRGGBB` 또는 `#AARRGGBB` hex 문자열을 [Color]로 변환.
  static Color colorFromHex(String hex) {
    var value = hex.replaceFirst('#', '').toUpperCase();
    if (value.length == 6) value = 'FF$value';
    return Color(int.parse(value, radix: 16));
  }

  /// mappings.json의 icon 키 → Material [IconData]. 미매핑 시 기본 아이콘.
  static IconData iconFromKey(String key) =>
      _icons[key] ?? Icons.sports_esports;

  static const Map<String, IconData> _icons = {
    'military_tech': Icons.military_tech,
    'psychology': Icons.psychology,
    'stars': Icons.stars,
    'bolt': Icons.bolt,
    'auto_awesome': Icons.auto_awesome,
    'favorite': Icons.favorite,
    'volunteer_activism': Icons.volunteer_activism,
    'celebration': Icons.celebration,
    'verified': Icons.verified,
    'shield': Icons.shield,
    'gavel': Icons.gavel,
    'groups': Icons.groups,
    'build': Icons.build,
    'explore': Icons.explore,
    'rocket_launch': Icons.rocket_launch,
    'music_note': Icons.music_note,
    'chess': Icons.extension,
  };
}

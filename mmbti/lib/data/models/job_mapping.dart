import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_mapping.freezed.dart';
part 'job_mapping.g.dart';

/// 유형별 테마 컬러/아이콘. 색상은 hex 문자열, [icon]은 Material 아이콘 키.
@freezed
abstract class JobTheme with _$JobTheme {
  const factory JobTheme({
    required String ramp,
    required String fill,
    required String accent,
    required String icon,
  }) = _JobTheme;

  factory JobTheme.fromJson(Map<String, dynamic> json) =>
      _$JobThemeFromJson(json);
}

/// 추천 직업 1건 (직업명 + 한 줄 설명).
@freezed
abstract class JobRecommendation with _$JobRecommendation {
  const factory JobRecommendation({
    required String job,
    required String desc,
  }) = _JobRecommendation;

  factory JobRecommendation.fromJson(Map<String, dynamic> json) =>
      _$JobRecommendationFromJson(json);
}

/// 16유형 한 개의 매핑 정보. 에셋 경로(`image`)는 이곳에서만 관리한다.
@freezed
abstract class JobMapping with _$JobMapping {
  const factory JobMapping({
    required String title,
    required JobTheme theme,
    required String desc,
    required String image,
    required JobRecommendation primary,
    required List<String> alternatives,
  }) = _JobMapping;

  factory JobMapping.fromJson(Map<String, dynamic> json) =>
      _$JobMappingFromJson(json);
}

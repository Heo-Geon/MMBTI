// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobTheme _$JobThemeFromJson(Map<String, dynamic> json) => _JobTheme(
  ramp: json['ramp'] as String,
  fill: json['fill'] as String,
  accent: json['accent'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$JobThemeToJson(_JobTheme instance) => <String, dynamic>{
  'ramp': instance.ramp,
  'fill': instance.fill,
  'accent': instance.accent,
  'icon': instance.icon,
};

_JobRecommendation _$JobRecommendationFromJson(Map<String, dynamic> json) =>
    _JobRecommendation(
      job: json['job'] as String,
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$JobRecommendationToJson(_JobRecommendation instance) =>
    <String, dynamic>{'job': instance.job, 'desc': instance.desc};

_JobMapping _$JobMappingFromJson(Map<String, dynamic> json) => _JobMapping(
  title: json['title'] as String,
  theme: JobTheme.fromJson(json['theme'] as Map<String, dynamic>),
  desc: json['desc'] as String,
  image: json['image'] as String,
  primary: JobRecommendation.fromJson(json['primary'] as Map<String, dynamic>),
  alternatives: (json['alternatives'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$JobMappingToJson(_JobMapping instance) =>
    <String, dynamic>{
      'title': instance.title,
      'theme': instance.theme,
      'desc': instance.desc,
      'image': instance.image,
      'primary': instance.primary,
      'alternatives': instance.alternatives,
    };

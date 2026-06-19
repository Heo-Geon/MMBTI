// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Option _$OptionFromJson(Map<String, dynamic> json) => _Option(
  text: json['text'] as String,
  weight: (json['weight'] as num).toInt(),
);

Map<String, dynamic> _$OptionToJson(_Option instance) => <String, dynamic>{
  'text': instance.text,
  'weight': instance.weight,
};

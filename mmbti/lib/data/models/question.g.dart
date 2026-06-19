// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: (json['id'] as num).toInt(),
  axis: $enumDecode(_$MbtiAxisEnumMap, json['axis']),
  text: json['text'] as String,
  options: (json['options'] as List<dynamic>)
      .map((e) => Option.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
  'id': instance.id,
  'axis': _$MbtiAxisEnumMap[instance.axis]!,
  'text': instance.text,
  'options': instance.options,
};

const _$MbtiAxisEnumMap = {
  MbtiAxis.ei: 'EI',
  MbtiAxis.sn: 'SN',
  MbtiAxis.tf: 'TF',
  MbtiAxis.jp: 'JP',
};

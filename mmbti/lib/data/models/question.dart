import 'package:freezed_annotation/freezed_annotation.dart';

import 'option.dart';

part 'question.freezed.dart';
part 'question.g.dart';

/// MBTI 4축. 각 축의 첫 극(E/S/T/J)은 양수, 둘째 극(I/N/F/P)은 음수로 누적한다.
enum MbtiAxis {
  @JsonValue('EI')
  ei,
  @JsonValue('SN')
  sn,
  @JsonValue('TF')
  tf,
  @JsonValue('JP')
  jp;

  /// 양수일 때의 극 문자 (E/S/T/J).
  String get positivePole => switch (this) {
        MbtiAxis.ei => 'E',
        MbtiAxis.sn => 'S',
        MbtiAxis.tf => 'T',
        MbtiAxis.jp => 'J',
      };

  /// 음수일 때의 극 문자 (I/N/F/P).
  String get negativePole => switch (this) {
        MbtiAxis.ei => 'I',
        MbtiAxis.sn => 'N',
        MbtiAxis.tf => 'F',
        MbtiAxis.jp => 'P',
      };
}

@freezed
abstract class Question with _$Question {
  const factory Question({
    required int id,
    required MbtiAxis axis,
    required String text,
    required List<Option> options,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'option.freezed.dart';
part 'option.g.dart';

/// 한 문항의 선택지. [weight]는 -2 ~ +2 범위이며 양수는 해당 축의 첫 극,
/// 음수는 둘째 극으로 누적된다.
@freezed
abstract class Option with _$Option {
  const factory Option({
    required String text,
    required int weight,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

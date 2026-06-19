import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_mapping.dart';
import 'question.dart';

part 'mbti_result.freezed.dart';

/// 축당 최대 점수 (문항 3개 × weight 2). 강도(%) 계산의 분모.
const int kMaxAxisScore = 6;

/// 최종 판정 결과. [scores]는 축별 부호 있는 누적 점수, [type]은 4글자 코드,
/// [mapping]은 추천 정보. JSON 직렬화 대상이 아니므로 fromJson은 두지 않는다.
@freezed
abstract class MbtiResult with _$MbtiResult {
  const MbtiResult._();

  const factory MbtiResult({
    required String type,
    required Map<MbtiAxis, int> scores,
    required JobMapping mapping,
  }) = _MbtiResult;

  /// 해당 축에서 우세한 극의 문자.
  String dominantPole(MbtiAxis axis) {
    final score = scores[axis] ?? 0;
    return score >= 0 ? axis.positivePole : axis.negativePole;
  }

  /// 해당 축의 성향 강도(0~100%). 절댓값을 최대 점수로 정규화한다.
  int strengthPercent(MbtiAxis axis) {
    final score = (scores[axis] ?? 0).abs().clamp(0, kMaxAxisScore);
    return (score / kMaxAxisScore * 100).round();
  }
}

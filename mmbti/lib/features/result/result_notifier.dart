import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/mbti_result.dart';
import '../../data/models/question.dart';
import '../../data/repositories/quiz_repository.dart';
import '../quiz/quiz_notifier.dart';

part 'result_notifier.g.dart';

/// 4축 누적 점수 → 16유형 코드 변환. 0 이상이면 첫 극(tie-break 포함).
String mbtiTypeFromScores(Map<MbtiAxis, int> scores) {
  String pole(MbtiAxis axis) {
    final score = scores[axis] ?? 0;
    return score >= 0 ? axis.positivePole : axis.negativePole;
  }

  return pole(MbtiAxis.ei) +
      pole(MbtiAxis.sn) +
      pole(MbtiAxis.tf) +
      pole(MbtiAxis.jp);
}

/// 퀴즈 점수와 매핑 테이블로 최종 결과를 산출. 미완료/로딩 중이면 null.
@riverpod
MbtiResult? mbtiResult(Ref ref) {
  final quiz = ref.watch(quizProvider);
  if (!quiz.isComplete) return null;

  final mappings = ref.watch(mappingsProvider).value;
  if (mappings == null) return null;

  final scores = quiz.scores;
  final type = mbtiTypeFromScores(scores);
  final mapping = mappings[type];
  if (mapping == null) return null;

  return MbtiResult(type: type, scores: scores, mapping: mapping);
}

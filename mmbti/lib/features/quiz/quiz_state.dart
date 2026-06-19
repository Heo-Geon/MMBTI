import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/question.dart';

part 'quiz_state.freezed.dart';

/// 퀴즈 진행 상태. [answers]는 문항과 인덱스 정렬된 선택 옵션 인덱스(미응답 null).
@freezed
abstract class QuizState with _$QuizState {
  const QuizState._();

  const factory QuizState({
    required List<Question> questions,
    required List<int?> answers,
    @Default(0) int currentIndex,
  }) = _QuizState;

  int get total => questions.length;

  Question get currentQuestion => questions[currentIndex];

  int? get currentSelection => answers[currentIndex];

  bool get isFirst => currentIndex == 0;

  bool get isLast => currentIndex >= total - 1;

  /// 1부터 시작하는 현재 진행 번호 (예: 5/12의 5).
  int get displayNumber => currentIndex + 1;

  /// 모든 문항에 응답 완료되었는지.
  bool get isComplete => total > 0 && answers.every((a) => a != null);

  /// 4축 부호 있는 누적 점수. 양수→첫 극, 음수→둘째 극.
  Map<MbtiAxis, int> get scores {
    final map = {for (final axis in MbtiAxis.values) axis: 0};
    for (var i = 0; i < questions.length; i++) {
      final selection = answers[i];
      if (selection == null) continue;
      final question = questions[i];
      map[question.axis] =
          map[question.axis]! + question.options[selection].weight;
    }
    return map;
  }
}

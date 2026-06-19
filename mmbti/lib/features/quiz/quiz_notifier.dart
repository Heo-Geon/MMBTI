import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/quiz_repository.dart';
import 'quiz_state.dart';

part 'quiz_notifier.g.dart';

/// 문항 진행/응답을 관리. 결과 화면까지 상태를 유지해야 하므로 keepAlive.
@Riverpod(keepAlive: true)
class QuizNotifier extends _$QuizNotifier {
  @override
  QuizState build() {
    final questions = ref.watch(questionsProvider).requireValue;
    return QuizState(
      questions: questions,
      answers: List<int?>.filled(questions.length, null),
    );
  }

  /// 현재 문항에 응답하고 자동으로 다음 문항으로 이동(마지막이면 머무름).
  void select(int optionIndex) {
    final answers = [...state.answers];
    answers[state.currentIndex] = optionIndex;
    state = state.copyWith(
      answers: answers,
      currentIndex: state.isLast ? state.currentIndex : state.currentIndex + 1,
    );
  }

  /// 이전 문항으로. 점수는 항상 응답에서 파생되므로 자연히 롤백된다.
  void previous() {
    if (state.isFirst) return;
    state = state.copyWith(currentIndex: state.currentIndex - 1);
  }

  /// 처음부터 다시.
  void reset() {
    state = QuizState(
      questions: state.questions,
      answers: List<int?>.filled(state.questions.length, null),
    );
  }
}

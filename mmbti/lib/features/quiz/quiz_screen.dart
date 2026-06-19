import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/constants/route_paths.dart';
import '../../data/repositories/quiz_repository.dart';
import 'quiz_notifier.dart';
import 'widgets/progress_bar.dart';
import 'widgets/question_card.dart';

/// 12문항 진행 화면.
class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsAsync = ref.watch(questionsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('플레이 성향 분석')),
      body: SafeArea(
        child: questionsAsync.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, _) => Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text('문항을 불러오지 못했어요.\n$error',
                  textAlign: TextAlign.center),
            ),
          ),
          data: (_) => const _QuizBody(),
        ),
      ),
    );
  }
}

class _QuizBody extends ConsumerWidget {
  const _QuizBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 모든 문항 응답이 끝나면 결과 화면으로.
    ref.listen(quizProvider, (previous, next) {
      if (next.isComplete) {
        context.go(RoutePaths.result);
      }
    });

    final state = ref.watch(quizProvider);
    final notifier = ref.read(quizProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
          child: QuizProgressBar(
            current: state.displayNumber,
            total: state.total,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
            child: QuestionCard(
              // 문항이 바뀌면 전환 애니메이션을 위해 key 부여.
              key: ValueKey(state.currentIndex),
              question: state.currentQuestion,
              selectedIndex: state.currentSelection,
              onSelect: notifier.select,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Row(
            children: [
              if (!state.isFirst)
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: notifier.previous,
                    icon: const Icon(Icons.arrow_back_rounded, size: 20),
                    label: const Text('이전'),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

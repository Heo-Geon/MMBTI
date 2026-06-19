import 'package:go_router/go_router.dart';

import '../../features/onboarding/onboarding_screen.dart';
import '../../features/quiz/quiz_screen.dart';
import '../../features/result/result_screen.dart';
import '../constants/route_paths.dart';

/// 앱 라우터 (선언형 go_router).
final GoRouter appRouter = GoRouter(
  initialLocation: RoutePaths.onboarding,
  routes: [
    GoRoute(
      path: RoutePaths.onboarding,
      name: RoutePaths.onboardingName,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: RoutePaths.quiz,
      name: RoutePaths.quizName,
      builder: (context, state) => const QuizScreen(),
    ),
    GoRoute(
      path: RoutePaths.result,
      name: RoutePaths.resultName,
      builder: (context, state) => const ResultScreen(),
    ),
  ],
);

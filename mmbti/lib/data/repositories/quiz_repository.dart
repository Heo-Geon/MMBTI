import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/job_mapping.dart';
import '../models/question.dart';

/// 로컬 JSON 에셋을 로드해 모델로 변환하는 저장소. 오프라인 동작.
class QuizRepository {
  const QuizRepository();

  static const String _questionsAsset = 'lib/data/assets/questions.json';
  static const String _mappingsAsset = 'lib/data/assets/mappings.json';

  /// 12문항 로드.
  Future<List<Question>> loadQuestions() async {
    final raw = await rootBundle.loadString(_questionsAsset);
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final list = json['questions'] as List<dynamic>;
    return list
        .map((e) => Question.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);
  }

  /// 16유형 매핑 로드. key는 MBTI 4글자 코드.
  Future<Map<String, JobMapping>> loadMappings() async {
    final raw = await rootBundle.loadString(_mappingsAsset);
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return json.map(
      (key, value) =>
          MapEntry(key, JobMapping.fromJson(value as Map<String, dynamic>)),
    );
  }
}

final quizRepositoryProvider = Provider<QuizRepository>(
  (ref) => const QuizRepository(),
);

/// 문항 목록 (앱 시작 시 1회 로드).
final questionsProvider = FutureProvider<List<Question>>(
  (ref) => ref.watch(quizRepositoryProvider).loadQuestions(),
);

/// 유형 매핑 테이블.
final mappingsProvider = FutureProvider<Map<String, JobMapping>>(
  (ref) => ref.watch(quizRepositoryProvider).loadMappings(),
);

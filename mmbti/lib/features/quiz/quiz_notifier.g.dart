// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 문항 진행/응답을 관리. 결과 화면까지 상태를 유지해야 하므로 keepAlive.

@ProviderFor(QuizNotifier)
final quizProvider = QuizNotifierProvider._();

/// 문항 진행/응답을 관리. 결과 화면까지 상태를 유지해야 하므로 keepAlive.
final class QuizNotifierProvider
    extends $NotifierProvider<QuizNotifier, QuizState> {
  /// 문항 진행/응답을 관리. 결과 화면까지 상태를 유지해야 하므로 keepAlive.
  QuizNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'quizProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$quizNotifierHash();

  @$internal
  @override
  QuizNotifier create() => QuizNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QuizState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QuizState>(value),
    );
  }
}

String _$quizNotifierHash() => r'0254fddf840efd1e957836f1f922584fd0061bab';

/// 문항 진행/응답을 관리. 결과 화면까지 상태를 유지해야 하므로 keepAlive.

abstract class _$QuizNotifier extends $Notifier<QuizState> {
  QuizState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<QuizState, QuizState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<QuizState, QuizState>,
              QuizState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

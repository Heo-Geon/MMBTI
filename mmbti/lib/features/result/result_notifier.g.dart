// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 퀴즈 점수와 매핑 테이블로 최종 결과를 산출. 미완료/로딩 중이면 null.

@ProviderFor(mbtiResult)
final mbtiResultProvider = MbtiResultProvider._();

/// 퀴즈 점수와 매핑 테이블로 최종 결과를 산출. 미완료/로딩 중이면 null.

final class MbtiResultProvider
    extends $FunctionalProvider<MbtiResult?, MbtiResult?, MbtiResult?>
    with $Provider<MbtiResult?> {
  /// 퀴즈 점수와 매핑 테이블로 최종 결과를 산출. 미완료/로딩 중이면 null.
  MbtiResultProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mbtiResultProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mbtiResultHash();

  @$internal
  @override
  $ProviderElement<MbtiResult?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MbtiResult? create(Ref ref) {
    return mbtiResult(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MbtiResult? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MbtiResult?>(value),
    );
  }
}

String _$mbtiResultHash() => r'dc6b990d407762ae2f312205b5f9f20f50410958';

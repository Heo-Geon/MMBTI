// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mbti_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MbtiResult {

 String get type; Map<MbtiAxis, int> get scores; JobMapping get mapping;
/// Create a copy of MbtiResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MbtiResultCopyWith<MbtiResult> get copyWith => _$MbtiResultCopyWithImpl<MbtiResult>(this as MbtiResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MbtiResult&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.scores, scores)&&(identical(other.mapping, mapping) || other.mapping == mapping));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(scores),mapping);

@override
String toString() {
  return 'MbtiResult(type: $type, scores: $scores, mapping: $mapping)';
}


}

/// @nodoc
abstract mixin class $MbtiResultCopyWith<$Res>  {
  factory $MbtiResultCopyWith(MbtiResult value, $Res Function(MbtiResult) _then) = _$MbtiResultCopyWithImpl;
@useResult
$Res call({
 String type, Map<MbtiAxis, int> scores, JobMapping mapping
});


$JobMappingCopyWith<$Res> get mapping;

}
/// @nodoc
class _$MbtiResultCopyWithImpl<$Res>
    implements $MbtiResultCopyWith<$Res> {
  _$MbtiResultCopyWithImpl(this._self, this._then);

  final MbtiResult _self;
  final $Res Function(MbtiResult) _then;

/// Create a copy of MbtiResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? scores = null,Object? mapping = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,scores: null == scores ? _self.scores : scores // ignore: cast_nullable_to_non_nullable
as Map<MbtiAxis, int>,mapping: null == mapping ? _self.mapping : mapping // ignore: cast_nullable_to_non_nullable
as JobMapping,
  ));
}
/// Create a copy of MbtiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobMappingCopyWith<$Res> get mapping {
  
  return $JobMappingCopyWith<$Res>(_self.mapping, (value) {
    return _then(_self.copyWith(mapping: value));
  });
}
}


/// Adds pattern-matching-related methods to [MbtiResult].
extension MbtiResultPatterns on MbtiResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MbtiResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MbtiResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MbtiResult value)  $default,){
final _that = this;
switch (_that) {
case _MbtiResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MbtiResult value)?  $default,){
final _that = this;
switch (_that) {
case _MbtiResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  Map<MbtiAxis, int> scores,  JobMapping mapping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MbtiResult() when $default != null:
return $default(_that.type,_that.scores,_that.mapping);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  Map<MbtiAxis, int> scores,  JobMapping mapping)  $default,) {final _that = this;
switch (_that) {
case _MbtiResult():
return $default(_that.type,_that.scores,_that.mapping);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  Map<MbtiAxis, int> scores,  JobMapping mapping)?  $default,) {final _that = this;
switch (_that) {
case _MbtiResult() when $default != null:
return $default(_that.type,_that.scores,_that.mapping);case _:
  return null;

}
}

}

/// @nodoc


class _MbtiResult extends MbtiResult {
  const _MbtiResult({required this.type, required final  Map<MbtiAxis, int> scores, required this.mapping}): _scores = scores,super._();
  

@override final  String type;
 final  Map<MbtiAxis, int> _scores;
@override Map<MbtiAxis, int> get scores {
  if (_scores is EqualUnmodifiableMapView) return _scores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_scores);
}

@override final  JobMapping mapping;

/// Create a copy of MbtiResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MbtiResultCopyWith<_MbtiResult> get copyWith => __$MbtiResultCopyWithImpl<_MbtiResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MbtiResult&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._scores, _scores)&&(identical(other.mapping, mapping) || other.mapping == mapping));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(_scores),mapping);

@override
String toString() {
  return 'MbtiResult(type: $type, scores: $scores, mapping: $mapping)';
}


}

/// @nodoc
abstract mixin class _$MbtiResultCopyWith<$Res> implements $MbtiResultCopyWith<$Res> {
  factory _$MbtiResultCopyWith(_MbtiResult value, $Res Function(_MbtiResult) _then) = __$MbtiResultCopyWithImpl;
@override @useResult
$Res call({
 String type, Map<MbtiAxis, int> scores, JobMapping mapping
});


@override $JobMappingCopyWith<$Res> get mapping;

}
/// @nodoc
class __$MbtiResultCopyWithImpl<$Res>
    implements _$MbtiResultCopyWith<$Res> {
  __$MbtiResultCopyWithImpl(this._self, this._then);

  final _MbtiResult _self;
  final $Res Function(_MbtiResult) _then;

/// Create a copy of MbtiResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? scores = null,Object? mapping = null,}) {
  return _then(_MbtiResult(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,scores: null == scores ? _self._scores : scores // ignore: cast_nullable_to_non_nullable
as Map<MbtiAxis, int>,mapping: null == mapping ? _self.mapping : mapping // ignore: cast_nullable_to_non_nullable
as JobMapping,
  ));
}

/// Create a copy of MbtiResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobMappingCopyWith<$Res> get mapping {
  
  return $JobMappingCopyWith<$Res>(_self.mapping, (value) {
    return _then(_self.copyWith(mapping: value));
  });
}
}

// dart format on

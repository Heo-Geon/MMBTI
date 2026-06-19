// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_mapping.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobTheme {

 String get ramp; String get fill; String get accent; String get icon;
/// Create a copy of JobTheme
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobThemeCopyWith<JobTheme> get copyWith => _$JobThemeCopyWithImpl<JobTheme>(this as JobTheme, _$identity);

  /// Serializes this JobTheme to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobTheme&&(identical(other.ramp, ramp) || other.ramp == ramp)&&(identical(other.fill, fill) || other.fill == fill)&&(identical(other.accent, accent) || other.accent == accent)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ramp,fill,accent,icon);

@override
String toString() {
  return 'JobTheme(ramp: $ramp, fill: $fill, accent: $accent, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $JobThemeCopyWith<$Res>  {
  factory $JobThemeCopyWith(JobTheme value, $Res Function(JobTheme) _then) = _$JobThemeCopyWithImpl;
@useResult
$Res call({
 String ramp, String fill, String accent, String icon
});




}
/// @nodoc
class _$JobThemeCopyWithImpl<$Res>
    implements $JobThemeCopyWith<$Res> {
  _$JobThemeCopyWithImpl(this._self, this._then);

  final JobTheme _self;
  final $Res Function(JobTheme) _then;

/// Create a copy of JobTheme
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ramp = null,Object? fill = null,Object? accent = null,Object? icon = null,}) {
  return _then(_self.copyWith(
ramp: null == ramp ? _self.ramp : ramp // ignore: cast_nullable_to_non_nullable
as String,fill: null == fill ? _self.fill : fill // ignore: cast_nullable_to_non_nullable
as String,accent: null == accent ? _self.accent : accent // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JobTheme].
extension JobThemePatterns on JobTheme {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobTheme value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobTheme() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobTheme value)  $default,){
final _that = this;
switch (_that) {
case _JobTheme():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobTheme value)?  $default,){
final _that = this;
switch (_that) {
case _JobTheme() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ramp,  String fill,  String accent,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobTheme() when $default != null:
return $default(_that.ramp,_that.fill,_that.accent,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ramp,  String fill,  String accent,  String icon)  $default,) {final _that = this;
switch (_that) {
case _JobTheme():
return $default(_that.ramp,_that.fill,_that.accent,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ramp,  String fill,  String accent,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _JobTheme() when $default != null:
return $default(_that.ramp,_that.fill,_that.accent,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobTheme implements JobTheme {
  const _JobTheme({required this.ramp, required this.fill, required this.accent, required this.icon});
  factory _JobTheme.fromJson(Map<String, dynamic> json) => _$JobThemeFromJson(json);

@override final  String ramp;
@override final  String fill;
@override final  String accent;
@override final  String icon;

/// Create a copy of JobTheme
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobThemeCopyWith<_JobTheme> get copyWith => __$JobThemeCopyWithImpl<_JobTheme>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobThemeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobTheme&&(identical(other.ramp, ramp) || other.ramp == ramp)&&(identical(other.fill, fill) || other.fill == fill)&&(identical(other.accent, accent) || other.accent == accent)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ramp,fill,accent,icon);

@override
String toString() {
  return 'JobTheme(ramp: $ramp, fill: $fill, accent: $accent, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$JobThemeCopyWith<$Res> implements $JobThemeCopyWith<$Res> {
  factory _$JobThemeCopyWith(_JobTheme value, $Res Function(_JobTheme) _then) = __$JobThemeCopyWithImpl;
@override @useResult
$Res call({
 String ramp, String fill, String accent, String icon
});




}
/// @nodoc
class __$JobThemeCopyWithImpl<$Res>
    implements _$JobThemeCopyWith<$Res> {
  __$JobThemeCopyWithImpl(this._self, this._then);

  final _JobTheme _self;
  final $Res Function(_JobTheme) _then;

/// Create a copy of JobTheme
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ramp = null,Object? fill = null,Object? accent = null,Object? icon = null,}) {
  return _then(_JobTheme(
ramp: null == ramp ? _self.ramp : ramp // ignore: cast_nullable_to_non_nullable
as String,fill: null == fill ? _self.fill : fill // ignore: cast_nullable_to_non_nullable
as String,accent: null == accent ? _self.accent : accent // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$JobRecommendation {

 String get job; String get desc;
/// Create a copy of JobRecommendation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobRecommendationCopyWith<JobRecommendation> get copyWith => _$JobRecommendationCopyWithImpl<JobRecommendation>(this as JobRecommendation, _$identity);

  /// Serializes this JobRecommendation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobRecommendation&&(identical(other.job, job) || other.job == job)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,job,desc);

@override
String toString() {
  return 'JobRecommendation(job: $job, desc: $desc)';
}


}

/// @nodoc
abstract mixin class $JobRecommendationCopyWith<$Res>  {
  factory $JobRecommendationCopyWith(JobRecommendation value, $Res Function(JobRecommendation) _then) = _$JobRecommendationCopyWithImpl;
@useResult
$Res call({
 String job, String desc
});




}
/// @nodoc
class _$JobRecommendationCopyWithImpl<$Res>
    implements $JobRecommendationCopyWith<$Res> {
  _$JobRecommendationCopyWithImpl(this._self, this._then);

  final JobRecommendation _self;
  final $Res Function(JobRecommendation) _then;

/// Create a copy of JobRecommendation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? job = null,Object? desc = null,}) {
  return _then(_self.copyWith(
job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [JobRecommendation].
extension JobRecommendationPatterns on JobRecommendation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobRecommendation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobRecommendation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobRecommendation value)  $default,){
final _that = this;
switch (_that) {
case _JobRecommendation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobRecommendation value)?  $default,){
final _that = this;
switch (_that) {
case _JobRecommendation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String job,  String desc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobRecommendation() when $default != null:
return $default(_that.job,_that.desc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String job,  String desc)  $default,) {final _that = this;
switch (_that) {
case _JobRecommendation():
return $default(_that.job,_that.desc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String job,  String desc)?  $default,) {final _that = this;
switch (_that) {
case _JobRecommendation() when $default != null:
return $default(_that.job,_that.desc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobRecommendation implements JobRecommendation {
  const _JobRecommendation({required this.job, required this.desc});
  factory _JobRecommendation.fromJson(Map<String, dynamic> json) => _$JobRecommendationFromJson(json);

@override final  String job;
@override final  String desc;

/// Create a copy of JobRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobRecommendationCopyWith<_JobRecommendation> get copyWith => __$JobRecommendationCopyWithImpl<_JobRecommendation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobRecommendationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobRecommendation&&(identical(other.job, job) || other.job == job)&&(identical(other.desc, desc) || other.desc == desc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,job,desc);

@override
String toString() {
  return 'JobRecommendation(job: $job, desc: $desc)';
}


}

/// @nodoc
abstract mixin class _$JobRecommendationCopyWith<$Res> implements $JobRecommendationCopyWith<$Res> {
  factory _$JobRecommendationCopyWith(_JobRecommendation value, $Res Function(_JobRecommendation) _then) = __$JobRecommendationCopyWithImpl;
@override @useResult
$Res call({
 String job, String desc
});




}
/// @nodoc
class __$JobRecommendationCopyWithImpl<$Res>
    implements _$JobRecommendationCopyWith<$Res> {
  __$JobRecommendationCopyWithImpl(this._self, this._then);

  final _JobRecommendation _self;
  final $Res Function(_JobRecommendation) _then;

/// Create a copy of JobRecommendation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? job = null,Object? desc = null,}) {
  return _then(_JobRecommendation(
job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$JobMapping {

 String get title; JobTheme get theme; String get desc; String get image; JobRecommendation get primary; List<String> get alternatives;
/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobMappingCopyWith<JobMapping> get copyWith => _$JobMappingCopyWithImpl<JobMapping>(this as JobMapping, _$identity);

  /// Serializes this JobMapping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobMapping&&(identical(other.title, title) || other.title == title)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.image, image) || other.image == image)&&(identical(other.primary, primary) || other.primary == primary)&&const DeepCollectionEquality().equals(other.alternatives, alternatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,theme,desc,image,primary,const DeepCollectionEquality().hash(alternatives));

@override
String toString() {
  return 'JobMapping(title: $title, theme: $theme, desc: $desc, image: $image, primary: $primary, alternatives: $alternatives)';
}


}

/// @nodoc
abstract mixin class $JobMappingCopyWith<$Res>  {
  factory $JobMappingCopyWith(JobMapping value, $Res Function(JobMapping) _then) = _$JobMappingCopyWithImpl;
@useResult
$Res call({
 String title, JobTheme theme, String desc, String image, JobRecommendation primary, List<String> alternatives
});


$JobThemeCopyWith<$Res> get theme;$JobRecommendationCopyWith<$Res> get primary;

}
/// @nodoc
class _$JobMappingCopyWithImpl<$Res>
    implements $JobMappingCopyWith<$Res> {
  _$JobMappingCopyWithImpl(this._self, this._then);

  final JobMapping _self;
  final $Res Function(JobMapping) _then;

/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? theme = null,Object? desc = null,Object? image = null,Object? primary = null,Object? alternatives = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as JobTheme,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as JobRecommendation,alternatives: null == alternatives ? _self.alternatives : alternatives // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobThemeCopyWith<$Res> get theme {
  
  return $JobThemeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobRecommendationCopyWith<$Res> get primary {
  
  return $JobRecommendationCopyWith<$Res>(_self.primary, (value) {
    return _then(_self.copyWith(primary: value));
  });
}
}


/// Adds pattern-matching-related methods to [JobMapping].
extension JobMappingPatterns on JobMapping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobMapping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobMapping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobMapping value)  $default,){
final _that = this;
switch (_that) {
case _JobMapping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobMapping value)?  $default,){
final _that = this;
switch (_that) {
case _JobMapping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  JobTheme theme,  String desc,  String image,  JobRecommendation primary,  List<String> alternatives)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobMapping() when $default != null:
return $default(_that.title,_that.theme,_that.desc,_that.image,_that.primary,_that.alternatives);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  JobTheme theme,  String desc,  String image,  JobRecommendation primary,  List<String> alternatives)  $default,) {final _that = this;
switch (_that) {
case _JobMapping():
return $default(_that.title,_that.theme,_that.desc,_that.image,_that.primary,_that.alternatives);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  JobTheme theme,  String desc,  String image,  JobRecommendation primary,  List<String> alternatives)?  $default,) {final _that = this;
switch (_that) {
case _JobMapping() when $default != null:
return $default(_that.title,_that.theme,_that.desc,_that.image,_that.primary,_that.alternatives);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobMapping implements JobMapping {
  const _JobMapping({required this.title, required this.theme, required this.desc, required this.image, required this.primary, required final  List<String> alternatives}): _alternatives = alternatives;
  factory _JobMapping.fromJson(Map<String, dynamic> json) => _$JobMappingFromJson(json);

@override final  String title;
@override final  JobTheme theme;
@override final  String desc;
@override final  String image;
@override final  JobRecommendation primary;
 final  List<String> _alternatives;
@override List<String> get alternatives {
  if (_alternatives is EqualUnmodifiableListView) return _alternatives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alternatives);
}


/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobMappingCopyWith<_JobMapping> get copyWith => __$JobMappingCopyWithImpl<_JobMapping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobMappingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobMapping&&(identical(other.title, title) || other.title == title)&&(identical(other.theme, theme) || other.theme == theme)&&(identical(other.desc, desc) || other.desc == desc)&&(identical(other.image, image) || other.image == image)&&(identical(other.primary, primary) || other.primary == primary)&&const DeepCollectionEquality().equals(other._alternatives, _alternatives));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,theme,desc,image,primary,const DeepCollectionEquality().hash(_alternatives));

@override
String toString() {
  return 'JobMapping(title: $title, theme: $theme, desc: $desc, image: $image, primary: $primary, alternatives: $alternatives)';
}


}

/// @nodoc
abstract mixin class _$JobMappingCopyWith<$Res> implements $JobMappingCopyWith<$Res> {
  factory _$JobMappingCopyWith(_JobMapping value, $Res Function(_JobMapping) _then) = __$JobMappingCopyWithImpl;
@override @useResult
$Res call({
 String title, JobTheme theme, String desc, String image, JobRecommendation primary, List<String> alternatives
});


@override $JobThemeCopyWith<$Res> get theme;@override $JobRecommendationCopyWith<$Res> get primary;

}
/// @nodoc
class __$JobMappingCopyWithImpl<$Res>
    implements _$JobMappingCopyWith<$Res> {
  __$JobMappingCopyWithImpl(this._self, this._then);

  final _JobMapping _self;
  final $Res Function(_JobMapping) _then;

/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? theme = null,Object? desc = null,Object? image = null,Object? primary = null,Object? alternatives = null,}) {
  return _then(_JobMapping(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,theme: null == theme ? _self.theme : theme // ignore: cast_nullable_to_non_nullable
as JobTheme,desc: null == desc ? _self.desc : desc // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,primary: null == primary ? _self.primary : primary // ignore: cast_nullable_to_non_nullable
as JobRecommendation,alternatives: null == alternatives ? _self._alternatives : alternatives // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobThemeCopyWith<$Res> get theme {
  
  return $JobThemeCopyWith<$Res>(_self.theme, (value) {
    return _then(_self.copyWith(theme: value));
  });
}/// Create a copy of JobMapping
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$JobRecommendationCopyWith<$Res> get primary {
  
  return $JobRecommendationCopyWith<$Res>(_self.primary, (value) {
    return _then(_self.copyWith(primary: value));
  });
}
}

// dart format on

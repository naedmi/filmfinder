// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landing_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LandingTrendingParams {
  AvailableTrendingType get trendingType => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingTrendingParamsCopyWith<LandingTrendingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingTrendingParamsCopyWith<$Res> {
  factory $LandingTrendingParamsCopyWith(LandingTrendingParams value,
          $Res Function(LandingTrendingParams) then) =
      _$LandingTrendingParamsCopyWithImpl<$Res, LandingTrendingParams>;
  @useResult
  $Res call(
      {AvailableTrendingType trendingType,
      int page,
      String language,
      String? region});
}

/// @nodoc
class _$LandingTrendingParamsCopyWithImpl<$Res,
        $Val extends LandingTrendingParams>
    implements $LandingTrendingParamsCopyWith<$Res> {
  _$LandingTrendingParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingType = null,
    Object? page = null,
    Object? language = null,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      trendingType: null == trendingType
          ? _value.trendingType
          : trendingType // ignore: cast_nullable_to_non_nullable
              as AvailableTrendingType,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandingTrendingParamsCopyWith<$Res>
    implements $LandingTrendingParamsCopyWith<$Res> {
  factory _$$_LandingTrendingParamsCopyWith(_$_LandingTrendingParams value,
          $Res Function(_$_LandingTrendingParams) then) =
      __$$_LandingTrendingParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AvailableTrendingType trendingType,
      int page,
      String language,
      String? region});
}

/// @nodoc
class __$$_LandingTrendingParamsCopyWithImpl<$Res>
    extends _$LandingTrendingParamsCopyWithImpl<$Res, _$_LandingTrendingParams>
    implements _$$_LandingTrendingParamsCopyWith<$Res> {
  __$$_LandingTrendingParamsCopyWithImpl(_$_LandingTrendingParams _value,
      $Res Function(_$_LandingTrendingParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingType = null,
    Object? page = null,
    Object? language = null,
    Object? region = freezed,
  }) {
    return _then(_$_LandingTrendingParams(
      trendingType: null == trendingType
          ? _value.trendingType
          : trendingType // ignore: cast_nullable_to_non_nullable
              as AvailableTrendingType,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LandingTrendingParams extends _LandingTrendingParams {
  const _$_LandingTrendingParams(
      {required this.trendingType,
      this.page = 1,
      required this.language,
      this.region})
      : super._();

  @override
  final AvailableTrendingType trendingType;
  @override
  @JsonKey()
  final int page;
  @override
  final String language;
  @override
  final String? region;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LandingTrendingParams &&
            (identical(other.trendingType, trendingType) ||
                other.trendingType == trendingType) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, trendingType, page, language, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandingTrendingParamsCopyWith<_$_LandingTrendingParams> get copyWith =>
      __$$_LandingTrendingParamsCopyWithImpl<_$_LandingTrendingParams>(
          this, _$identity);
}

abstract class _LandingTrendingParams extends LandingTrendingParams {
  const factory _LandingTrendingParams(
      {required final AvailableTrendingType trendingType,
      final int page,
      required final String language,
      final String? region}) = _$_LandingTrendingParams;
  const _LandingTrendingParams._() : super._();

  @override
  AvailableTrendingType get trendingType;
  @override
  int get page;
  @override
  String get language;
  @override
  String? get region;
  @override
  @JsonKey(ignore: true)
  _$$_LandingTrendingParamsCopyWith<_$_LandingTrendingParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LandingCategoryParams {
  AvailableLandingCategory get category => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingCategoryParamsCopyWith<LandingCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingCategoryParamsCopyWith<$Res> {
  factory $LandingCategoryParamsCopyWith(LandingCategoryParams value,
          $Res Function(LandingCategoryParams) then) =
      _$LandingCategoryParamsCopyWithImpl<$Res, LandingCategoryParams>;
  @useResult
  $Res call(
      {AvailableLandingCategory category,
      int page,
      String language,
      String? region});
}

/// @nodoc
class _$LandingCategoryParamsCopyWithImpl<$Res,
        $Val extends LandingCategoryParams>
    implements $LandingCategoryParamsCopyWith<$Res> {
  _$LandingCategoryParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? page = null,
    Object? language = null,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AvailableLandingCategory,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandingCategoryParamsCopyWith<$Res>
    implements $LandingCategoryParamsCopyWith<$Res> {
  factory _$$_LandingCategoryParamsCopyWith(_$_LandingCategoryParams value,
          $Res Function(_$_LandingCategoryParams) then) =
      __$$_LandingCategoryParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AvailableLandingCategory category,
      int page,
      String language,
      String? region});
}

/// @nodoc
class __$$_LandingCategoryParamsCopyWithImpl<$Res>
    extends _$LandingCategoryParamsCopyWithImpl<$Res, _$_LandingCategoryParams>
    implements _$$_LandingCategoryParamsCopyWith<$Res> {
  __$$_LandingCategoryParamsCopyWithImpl(_$_LandingCategoryParams _value,
      $Res Function(_$_LandingCategoryParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? page = null,
    Object? language = null,
    Object? region = freezed,
  }) {
    return _then(_$_LandingCategoryParams(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AvailableLandingCategory,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LandingCategoryParams extends _LandingCategoryParams {
  const _$_LandingCategoryParams(
      {required this.category,
      this.page = 1,
      required this.language,
      this.region})
      : super._();

  @override
  final AvailableLandingCategory category;
  @override
  @JsonKey()
  final int page;
  @override
  final String language;
  @override
  final String? region;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LandingCategoryParams &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, category, page, language, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandingCategoryParamsCopyWith<_$_LandingCategoryParams> get copyWith =>
      __$$_LandingCategoryParamsCopyWithImpl<_$_LandingCategoryParams>(
          this, _$identity);
}

abstract class _LandingCategoryParams extends LandingCategoryParams {
  const factory _LandingCategoryParams(
      {required final AvailableLandingCategory category,
      final int page,
      required final String language,
      final String? region}) = _$_LandingCategoryParams;
  const _LandingCategoryParams._() : super._();

  @override
  AvailableLandingCategory get category;
  @override
  int get page;
  @override
  String get language;
  @override
  String? get region;
  @override
  @JsonKey(ignore: true)
  _$$_LandingCategoryParamsCopyWith<_$_LandingCategoryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

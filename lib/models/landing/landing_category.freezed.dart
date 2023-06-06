// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landing_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LandingCategory {
  String get title => throw _privateConstructorUsedError;
  List<ClickablePoster> get posters => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingCategoryCopyWith<LandingCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingCategoryCopyWith<$Res> {
  factory $LandingCategoryCopyWith(
          LandingCategory value, $Res Function(LandingCategory) then) =
      _$LandingCategoryCopyWithImpl<$Res, LandingCategory>;
  @useResult
  $Res call({String title, List<ClickablePoster> posters});
}

/// @nodoc
class _$LandingCategoryCopyWithImpl<$Res, $Val extends LandingCategory>
    implements $LandingCategoryCopyWith<$Res> {
  _$LandingCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? posters = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posters: null == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ClickablePoster>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandingCategoryCopyWith<$Res>
    implements $LandingCategoryCopyWith<$Res> {
  factory _$$_LandingCategoryCopyWith(
          _$_LandingCategory value, $Res Function(_$_LandingCategory) then) =
      __$$_LandingCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<ClickablePoster> posters});
}

/// @nodoc
class __$$_LandingCategoryCopyWithImpl<$Res>
    extends _$LandingCategoryCopyWithImpl<$Res, _$_LandingCategory>
    implements _$$_LandingCategoryCopyWith<$Res> {
  __$$_LandingCategoryCopyWithImpl(
      _$_LandingCategory _value, $Res Function(_$_LandingCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? posters = null,
  }) {
    return _then(_$_LandingCategory(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posters: null == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ClickablePoster>,
    ));
  }
}

/// @nodoc

class _$_LandingCategory implements _LandingCategory {
  const _$_LandingCategory(
      {required this.title, required final List<ClickablePoster> posters})
      : _posters = posters;

  @override
  final String title;
  final List<ClickablePoster> _posters;
  @override
  List<ClickablePoster> get posters {
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posters);
  }

  @override
  String toString() {
    return 'LandingCategory(title: $title, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LandingCategory &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._posters, _posters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_posters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandingCategoryCopyWith<_$_LandingCategory> get copyWith =>
      __$$_LandingCategoryCopyWithImpl<_$_LandingCategory>(this, _$identity);
}

abstract class _LandingCategory implements LandingCategory {
  const factory _LandingCategory(
      {required final String title,
      required final List<ClickablePoster> posters}) = _$_LandingCategory;

  @override
  String get title;
  @override
  List<ClickablePoster> get posters;
  @override
  @JsonKey(ignore: true)
  _$$_LandingCategoryCopyWith<_$_LandingCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClickablePoster {
  int get movieId => throw _privateConstructorUsedError;
  String get posterPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClickablePosterCopyWith<ClickablePoster> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClickablePosterCopyWith<$Res> {
  factory $ClickablePosterCopyWith(
          ClickablePoster value, $Res Function(ClickablePoster) then) =
      _$ClickablePosterCopyWithImpl<$Res, ClickablePoster>;
  @useResult
  $Res call({int movieId, String posterPath});
}

/// @nodoc
class _$ClickablePosterCopyWithImpl<$Res, $Val extends ClickablePoster>
    implements $ClickablePosterCopyWith<$Res> {
  _$ClickablePosterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? posterPath = null,
  }) {
    return _then(_value.copyWith(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClickablePosterCopyWith<$Res>
    implements $ClickablePosterCopyWith<$Res> {
  factory _$$_ClickablePosterCopyWith(
          _$_ClickablePoster value, $Res Function(_$_ClickablePoster) then) =
      __$$_ClickablePosterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int movieId, String posterPath});
}

/// @nodoc
class __$$_ClickablePosterCopyWithImpl<$Res>
    extends _$ClickablePosterCopyWithImpl<$Res, _$_ClickablePoster>
    implements _$$_ClickablePosterCopyWith<$Res> {
  __$$_ClickablePosterCopyWithImpl(
      _$_ClickablePoster _value, $Res Function(_$_ClickablePoster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieId = null,
    Object? posterPath = null,
  }) {
    return _then(_$_ClickablePoster(
      movieId: null == movieId
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClickablePoster implements _ClickablePoster {
  const _$_ClickablePoster({required this.movieId, required this.posterPath});

  @override
  final int movieId;
  @override
  final String posterPath;

  @override
  String toString() {
    return 'ClickablePoster(movieId: $movieId, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClickablePoster &&
            (identical(other.movieId, movieId) || other.movieId == movieId) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieId, posterPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClickablePosterCopyWith<_$_ClickablePoster> get copyWith =>
      __$$_ClickablePosterCopyWithImpl<_$_ClickablePoster>(this, _$identity);
}

abstract class _ClickablePoster implements ClickablePoster {
  const factory _ClickablePoster(
      {required final int movieId,
      required final String posterPath}) = _$_ClickablePoster;

  @override
  int get movieId;
  @override
  String get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_ClickablePosterCopyWith<_$_ClickablePoster> get copyWith =>
      throw _privateConstructorUsedError;
}

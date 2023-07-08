// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterProviderModel {
  Map<int, (String, String)> get providers =>
      throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterProviderModelCopyWith<FilterProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProviderModelCopyWith<$Res> {
  factory $FilterProviderModelCopyWith(
          FilterProviderModel value, $Res Function(FilterProviderModel) then) =
      _$FilterProviderModelCopyWithImpl<$Res, FilterProviderModel>;
  @useResult
  $Res call({Map<int, (String, String)> providers, String language});
}

/// @nodoc
class _$FilterProviderModelCopyWithImpl<$Res, $Val extends FilterProviderModel>
    implements $FilterProviderModelCopyWith<$Res> {
  _$FilterProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      providers: null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as Map<int, (String, String)>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterProviderModelCopyWith<$Res>
    implements $FilterProviderModelCopyWith<$Res> {
  factory _$$_FilterProviderModelCopyWith(_$_FilterProviderModel value,
          $Res Function(_$_FilterProviderModel) then) =
      __$$_FilterProviderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, (String, String)> providers, String language});
}

/// @nodoc
class __$$_FilterProviderModelCopyWithImpl<$Res>
    extends _$FilterProviderModelCopyWithImpl<$Res, _$_FilterProviderModel>
    implements _$$_FilterProviderModelCopyWith<$Res> {
  __$$_FilterProviderModelCopyWithImpl(_$_FilterProviderModel _value,
      $Res Function(_$_FilterProviderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
    Object? language = null,
  }) {
    return _then(_$_FilterProviderModel(
      providers: null == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as Map<int, (String, String)>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterProviderModel implements _FilterProviderModel {
  _$_FilterProviderModel(
      {final Map<int, (String, String)> providers =
          const <int, (String, String)>{},
      this.language = 'en-US'})
      : _providers = providers;

  final Map<int, (String, String)> _providers;
  @override
  @JsonKey()
  Map<int, (String, String)> get providers {
    if (_providers is EqualUnmodifiableMapView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_providers);
  }

  @override
  @JsonKey()
  final String language;

  @override
  String toString() {
    return 'FilterProviderModel(providers: $providers, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterProviderModel &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_providers), language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterProviderModelCopyWith<_$_FilterProviderModel> get copyWith =>
      __$$_FilterProviderModelCopyWithImpl<_$_FilterProviderModel>(
          this, _$identity);
}

abstract class _FilterProviderModel implements FilterProviderModel {
  factory _FilterProviderModel(
      {final Map<int, (String, String)> providers,
      final String language}) = _$_FilterProviderModel;

  @override
  Map<int, (String, String)> get providers;
  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_FilterProviderModelCopyWith<_$_FilterProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterGenreModel {
  Map<int, String> get genres => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterGenreModelCopyWith<FilterGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterGenreModelCopyWith<$Res> {
  factory $FilterGenreModelCopyWith(
          FilterGenreModel value, $Res Function(FilterGenreModel) then) =
      _$FilterGenreModelCopyWithImpl<$Res, FilterGenreModel>;
  @useResult
  $Res call({Map<int, String> genres});
}

/// @nodoc
class _$FilterGenreModelCopyWithImpl<$Res, $Val extends FilterGenreModel>
    implements $FilterGenreModelCopyWith<$Res> {
  _$FilterGenreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterGenreModelCopyWith<$Res>
    implements $FilterGenreModelCopyWith<$Res> {
  factory _$$_FilterGenreModelCopyWith(
          _$_FilterGenreModel value, $Res Function(_$_FilterGenreModel) then) =
      __$$_FilterGenreModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<int, String> genres});
}

/// @nodoc
class __$$_FilterGenreModelCopyWithImpl<$Res>
    extends _$FilterGenreModelCopyWithImpl<$Res, _$_FilterGenreModel>
    implements _$$_FilterGenreModelCopyWith<$Res> {
  __$$_FilterGenreModelCopyWithImpl(
      _$_FilterGenreModel _value, $Res Function(_$_FilterGenreModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$_FilterGenreModel(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc

class _$_FilterGenreModel implements _FilterGenreModel {
  _$_FilterGenreModel({final Map<int, String> genres = const <int, String>{}})
      : _genres = genres;

  final Map<int, String> _genres;
  @override
  @JsonKey()
  Map<int, String> get genres {
    if (_genres is EqualUnmodifiableMapView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_genres);
  }

  @override
  String toString() {
    return 'FilterGenreModel(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterGenreModel &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterGenreModelCopyWith<_$_FilterGenreModel> get copyWith =>
      __$$_FilterGenreModelCopyWithImpl<_$_FilterGenreModel>(this, _$identity);
}

abstract class _FilterGenreModel implements FilterGenreModel {
  factory _FilterGenreModel({final Map<int, String> genres}) =
      _$_FilterGenreModel;

  @override
  Map<int, String> get genres;
  @override
  @JsonKey(ignore: true)
  _$$_FilterGenreModelCopyWith<_$_FilterGenreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

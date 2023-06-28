// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_provider_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieProviderResponse _$MovieProviderResponseFromJson(
    Map<String, dynamic> json) {
  return _MovieProviderResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieProviderResponse {
  List<MovieWatchProvider> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieProviderResponseCopyWith<MovieProviderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieProviderResponseCopyWith<$Res> {
  factory $MovieProviderResponseCopyWith(MovieProviderResponse value,
          $Res Function(MovieProviderResponse) then) =
      _$MovieProviderResponseCopyWithImpl<$Res, MovieProviderResponse>;
  @useResult
  $Res call({List<MovieWatchProvider> results});
}

/// @nodoc
class _$MovieProviderResponseCopyWithImpl<$Res,
        $Val extends MovieProviderResponse>
    implements $MovieProviderResponseCopyWith<$Res> {
  _$MovieProviderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieProviderResponseCopyWith<$Res>
    implements $MovieProviderResponseCopyWith<$Res> {
  factory _$$_MovieProviderResponseCopyWith(_$_MovieProviderResponse value,
          $Res Function(_$_MovieProviderResponse) then) =
      __$$_MovieProviderResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MovieWatchProvider> results});
}

/// @nodoc
class __$$_MovieProviderResponseCopyWithImpl<$Res>
    extends _$MovieProviderResponseCopyWithImpl<$Res, _$_MovieProviderResponse>
    implements _$$_MovieProviderResponseCopyWith<$Res> {
  __$$_MovieProviderResponseCopyWithImpl(_$_MovieProviderResponse _value,
      $Res Function(_$_MovieProviderResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_MovieProviderResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MovieProviderResponse implements _MovieProviderResponse {
  const _$_MovieProviderResponse(
      {required final List<MovieWatchProvider> results})
      : _results = results;

  factory _$_MovieProviderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieProviderResponseFromJson(json);

  final List<MovieWatchProvider> _results;
  @override
  List<MovieWatchProvider> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieProviderResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieProviderResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieProviderResponseCopyWith<_$_MovieProviderResponse> get copyWith =>
      __$$_MovieProviderResponseCopyWithImpl<_$_MovieProviderResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieProviderResponseToJson(
      this,
    );
  }
}

abstract class _MovieProviderResponse implements MovieProviderResponse {
  const factory _MovieProviderResponse(
          {required final List<MovieWatchProvider> results}) =
      _$_MovieProviderResponse;

  factory _MovieProviderResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieProviderResponse.fromJson;

  @override
  List<MovieWatchProvider> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MovieProviderResponseCopyWith<_$_MovieProviderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieWatchProvider _$MovieWatchProviderFromJson(Map<String, dynamic> json) {
  return _MovieWatchProvider.fromJson(json);
}

/// @nodoc
mixin _$MovieWatchProvider {
  int get providerId => throw _privateConstructorUsedError;
  String get providerName => throw _privateConstructorUsedError;
  String get logoPath => throw _privateConstructorUsedError;
  int get displayPriority => throw _privateConstructorUsedError;
  Map<String, int>? get displayPriorities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieWatchProviderCopyWith<MovieWatchProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatchProviderCopyWith<$Res> {
  factory $MovieWatchProviderCopyWith(
          MovieWatchProvider value, $Res Function(MovieWatchProvider) then) =
      _$MovieWatchProviderCopyWithImpl<$Res, MovieWatchProvider>;
  @useResult
  $Res call(
      {int providerId,
      String providerName,
      String logoPath,
      int displayPriority,
      Map<String, int>? displayPriorities});
}

/// @nodoc
class _$MovieWatchProviderCopyWithImpl<$Res, $Val extends MovieWatchProvider>
    implements $MovieWatchProviderCopyWith<$Res> {
  _$MovieWatchProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerId = null,
    Object? providerName = null,
    Object? logoPath = null,
    Object? displayPriority = null,
    Object? displayPriorities = freezed,
  }) {
    return _then(_value.copyWith(
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as int,
      providerName: null == providerName
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      displayPriority: null == displayPriority
          ? _value.displayPriority
          : displayPriority // ignore: cast_nullable_to_non_nullable
              as int,
      displayPriorities: freezed == displayPriorities
          ? _value.displayPriorities
          : displayPriorities // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieWatchProviderCopyWith<$Res>
    implements $MovieWatchProviderCopyWith<$Res> {
  factory _$$_MovieWatchProviderCopyWith(_$_MovieWatchProvider value,
          $Res Function(_$_MovieWatchProvider) then) =
      __$$_MovieWatchProviderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int providerId,
      String providerName,
      String logoPath,
      int displayPriority,
      Map<String, int>? displayPriorities});
}

/// @nodoc
class __$$_MovieWatchProviderCopyWithImpl<$Res>
    extends _$MovieWatchProviderCopyWithImpl<$Res, _$_MovieWatchProvider>
    implements _$$_MovieWatchProviderCopyWith<$Res> {
  __$$_MovieWatchProviderCopyWithImpl(
      _$_MovieWatchProvider _value, $Res Function(_$_MovieWatchProvider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providerId = null,
    Object? providerName = null,
    Object? logoPath = null,
    Object? displayPriority = null,
    Object? displayPriorities = freezed,
  }) {
    return _then(_$_MovieWatchProvider(
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as int,
      providerName: null == providerName
          ? _value.providerName
          : providerName // ignore: cast_nullable_to_non_nullable
              as String,
      logoPath: null == logoPath
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String,
      displayPriority: null == displayPriority
          ? _value.displayPriority
          : displayPriority // ignore: cast_nullable_to_non_nullable
              as int,
      displayPriorities: freezed == displayPriorities
          ? _value._displayPriorities
          : displayPriorities // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MovieWatchProvider implements _MovieWatchProvider {
  const _$_MovieWatchProvider(
      {required this.providerId,
      required this.providerName,
      required this.logoPath,
      required this.displayPriority,
      required final Map<String, int>? displayPriorities})
      : _displayPriorities = displayPriorities;

  factory _$_MovieWatchProvider.fromJson(Map<String, dynamic> json) =>
      _$$_MovieWatchProviderFromJson(json);

  @override
  final int providerId;
  @override
  final String providerName;
  @override
  final String logoPath;
  @override
  final int displayPriority;
  final Map<String, int>? _displayPriorities;
  @override
  Map<String, int>? get displayPriorities {
    final value = _displayPriorities;
    if (value == null) return null;
    if (_displayPriorities is EqualUnmodifiableMapView)
      return _displayPriorities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MovieWatchProvider(providerId: $providerId, providerName: $providerName, logoPath: $logoPath, displayPriority: $displayPriority, displayPriorities: $displayPriorities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieWatchProvider &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.providerName, providerName) ||
                other.providerName == providerName) &&
            (identical(other.logoPath, logoPath) ||
                other.logoPath == logoPath) &&
            (identical(other.displayPriority, displayPriority) ||
                other.displayPriority == displayPriority) &&
            const DeepCollectionEquality()
                .equals(other._displayPriorities, _displayPriorities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      providerId,
      providerName,
      logoPath,
      displayPriority,
      const DeepCollectionEquality().hash(_displayPriorities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieWatchProviderCopyWith<_$_MovieWatchProvider> get copyWith =>
      __$$_MovieWatchProviderCopyWithImpl<_$_MovieWatchProvider>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieWatchProviderToJson(
      this,
    );
  }
}

abstract class _MovieWatchProvider implements MovieWatchProvider {
  const factory _MovieWatchProvider(
          {required final int providerId,
          required final String providerName,
          required final String logoPath,
          required final int displayPriority,
          required final Map<String, int>? displayPriorities}) =
      _$_MovieWatchProvider;

  factory _MovieWatchProvider.fromJson(Map<String, dynamic> json) =
      _$_MovieWatchProvider.fromJson;

  @override
  int get providerId;
  @override
  String get providerName;
  @override
  String get logoPath;
  @override
  int get displayPriority;
  @override
  Map<String, int>? get displayPriorities;
  @override
  @JsonKey(ignore: true)
  _$$_MovieWatchProviderCopyWith<_$_MovieWatchProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

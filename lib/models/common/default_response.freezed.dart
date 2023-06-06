// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) {
  return _DefaultResponse.fromJson(json);
}

/// @nodoc
mixin _$DefaultResponse {
  DateResponse? get dates => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<MovieResult> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultResponseCopyWith<DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultResponseCopyWith<$Res> {
  factory $DefaultResponseCopyWith(
          DefaultResponse value, $Res Function(DefaultResponse) then) =
      _$DefaultResponseCopyWithImpl<$Res, DefaultResponse>;
  @useResult
  $Res call(
      {DateResponse? dates,
      int page,
      List<MovieResult> results,
      int totalPages,
      int totalResults});

  $DateResponseCopyWith<$Res>? get dates;
}

/// @nodoc
class _$DefaultResponseCopyWithImpl<$Res, $Val extends DefaultResponse>
    implements $DefaultResponseCopyWith<$Res> {
  _$DefaultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as DateResponse?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateResponseCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DateResponseCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DefaultResponseCopyWith<$Res>
    implements $DefaultResponseCopyWith<$Res> {
  factory _$$_DefaultResponseCopyWith(
          _$_DefaultResponse value, $Res Function(_$_DefaultResponse) then) =
      __$$_DefaultResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateResponse? dates,
      int page,
      List<MovieResult> results,
      int totalPages,
      int totalResults});

  @override
  $DateResponseCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$_DefaultResponseCopyWithImpl<$Res>
    extends _$DefaultResponseCopyWithImpl<$Res, _$_DefaultResponse>
    implements _$$_DefaultResponseCopyWith<$Res> {
  __$$_DefaultResponseCopyWithImpl(
      _$_DefaultResponse _value, $Res Function(_$_DefaultResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_DefaultResponse(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as DateResponse?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResult>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DefaultResponse implements _DefaultResponse {
  const _$_DefaultResponse(
      {this.dates,
      this.page = 1,
      final List<MovieResult> results = const <MovieResult>[],
      this.totalPages = 1,
      this.totalResults = 0})
      : _results = results;

  factory _$_DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultResponseFromJson(json);

  @override
  final DateResponse? dates;
  @override
  @JsonKey()
  final int page;
  final List<MovieResult> _results;
  @override
  @JsonKey()
  List<MovieResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final int totalResults;

  @override
  String toString() {
    return 'DefaultResponse(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultResponse &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DefaultResponseCopyWith<_$_DefaultResponse> get copyWith =>
      __$$_DefaultResponseCopyWithImpl<_$_DefaultResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultResponseToJson(
      this,
    );
  }
}

abstract class _DefaultResponse implements DefaultResponse {
  const factory _DefaultResponse(
      {final DateResponse? dates,
      final int page,
      final List<MovieResult> results,
      final int totalPages,
      final int totalResults}) = _$_DefaultResponse;

  factory _DefaultResponse.fromJson(Map<String, dynamic> json) =
      _$_DefaultResponse.fromJson;

  @override
  DateResponse? get dates;
  @override
  int get page;
  @override
  List<MovieResult> get results;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultResponseCopyWith<_$_DefaultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

DateResponse _$DateResponseFromJson(Map<String, dynamic> json) {
  return _DateResponse.fromJson(json);
}

/// @nodoc
mixin _$DateResponse {
  String get maximum => throw _privateConstructorUsedError;
  String get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateResponseCopyWith<DateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateResponseCopyWith<$Res> {
  factory $DateResponseCopyWith(
          DateResponse value, $Res Function(DateResponse) then) =
      _$DateResponseCopyWithImpl<$Res, DateResponse>;
  @useResult
  $Res call({String maximum, String minimum});
}

/// @nodoc
class _$DateResponseCopyWithImpl<$Res, $Val extends DateResponse>
    implements $DateResponseCopyWith<$Res> {
  _$DateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_value.copyWith(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateResponseCopyWith<$Res>
    implements $DateResponseCopyWith<$Res> {
  factory _$$_DateResponseCopyWith(
          _$_DateResponse value, $Res Function(_$_DateResponse) then) =
      __$$_DateResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String maximum, String minimum});
}

/// @nodoc
class __$$_DateResponseCopyWithImpl<$Res>
    extends _$DateResponseCopyWithImpl<$Res, _$_DateResponse>
    implements _$$_DateResponseCopyWith<$Res> {
  __$$_DateResponseCopyWithImpl(
      _$_DateResponse _value, $Res Function(_$_DateResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_$_DateResponse(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DateResponse implements _DateResponse {
  const _$_DateResponse({required this.maximum, required this.minimum});

  factory _$_DateResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DateResponseFromJson(json);

  @override
  final String maximum;
  @override
  final String minimum;

  @override
  String toString() {
    return 'DateResponse(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateResponse &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateResponseCopyWith<_$_DateResponse> get copyWith =>
      __$$_DateResponseCopyWithImpl<_$_DateResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateResponseToJson(
      this,
    );
  }
}

abstract class _DateResponse implements DateResponse {
  const factory _DateResponse(
      {required final String maximum,
      required final String minimum}) = _$_DateResponse;

  factory _DateResponse.fromJson(Map<String, dynamic> json) =
      _$_DateResponse.fromJson;

  @override
  String get maximum;
  @override
  String get minimum;
  @override
  @JsonKey(ignore: true)
  _$$_DateResponseCopyWith<_$_DateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

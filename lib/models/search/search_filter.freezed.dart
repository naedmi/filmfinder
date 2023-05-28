// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFilter {
  String get query => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFilterCopyWith<SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res, SearchFilter>;
  @useResult
  $Res call(
      {String query,
      bool adult,
      String language,
      int page,
      String type,
      int? year});
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res, $Val extends SearchFilter>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? adult = null,
    Object? language = null,
    Object? page = null,
    Object? type = null,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchFilterCopyWith<$Res>
    implements $SearchFilterCopyWith<$Res> {
  factory _$$_SearchFilterCopyWith(
          _$_SearchFilter value, $Res Function(_$_SearchFilter) then) =
      __$$_SearchFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      bool adult,
      String language,
      int page,
      String type,
      int? year});
}

/// @nodoc
class __$$_SearchFilterCopyWithImpl<$Res>
    extends _$SearchFilterCopyWithImpl<$Res, _$_SearchFilter>
    implements _$$_SearchFilterCopyWith<$Res> {
  __$$_SearchFilterCopyWithImpl(
      _$_SearchFilter _value, $Res Function(_$_SearchFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? adult = null,
    Object? language = null,
    Object? page = null,
    Object? type = null,
    Object? year = freezed,
  }) {
    return _then(_$_SearchFilter(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SearchFilter implements _SearchFilter {
  const _$_SearchFilter(
      {this.query = '',
      this.adult = false,
      this.language = 'en-US',
      this.page = 1,
      this.type = 'movie',
      this.year});

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool adult;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final String type;
  @override
  final int? year;

  @override
  String toString() {
    return 'SearchFilter(query: $query, adult: $adult, language: $language, page: $page, type: $type, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFilter &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, adult, language, page, type, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchFilterCopyWith<_$_SearchFilter> get copyWith =>
      __$$_SearchFilterCopyWithImpl<_$_SearchFilter>(this, _$identity);
}

abstract class _SearchFilter implements SearchFilter {
  const factory _SearchFilter(
      {final String query,
      final bool adult,
      final String language,
      final int page,
      final String type,
      final int? year}) = _$_SearchFilter;

  @override
  String get query;
  @override
  bool get adult;
  @override
  String get language;
  @override
  int get page;
  @override
  String get type;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_SearchFilterCopyWith<_$_SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

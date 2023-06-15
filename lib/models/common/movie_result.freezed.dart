// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
mixin _$MovieResult {
  @HiveField(0)
  bool? get adult => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get backdropPath => throw _privateConstructorUsedError;
  @HiveField(2)
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @HiveField(3)
  int get id => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get originalLanguage => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get originalTitle => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get overview => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get popularity => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get posterPath => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get releaseDate => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(11)
  bool? get video => throw _privateConstructorUsedError;
  @HiveField(12)
  double? get voteAverage => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
          MovieResult value, $Res Function(MovieResult) then) =
      _$MovieResultCopyWithImpl<$Res, MovieResult>;
  @useResult
  $Res call(
      {@HiveField(0) bool? adult,
      @HiveField(1) String? backdropPath,
      @HiveField(2) List<int>? genreIds,
      @HiveField(3) int id,
      @HiveField(4) String? originalLanguage,
      @HiveField(5) String? originalTitle,
      @HiveField(6) String? overview,
      @HiveField(7) double? popularity,
      @HiveField(8) String? posterPath,
      @HiveField(9) String? releaseDate,
      @HiveField(10) String? title,
      @HiveField(11) bool? video,
      @HiveField(12) double? voteAverage,
      @HiveField(13) int? voteCount});
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res, $Val extends MovieResult>
    implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieResultCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$$_MovieResultCopyWith(
          _$_MovieResult value, $Res Function(_$_MovieResult) then) =
      __$$_MovieResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool? adult,
      @HiveField(1) String? backdropPath,
      @HiveField(2) List<int>? genreIds,
      @HiveField(3) int id,
      @HiveField(4) String? originalLanguage,
      @HiveField(5) String? originalTitle,
      @HiveField(6) String? overview,
      @HiveField(7) double? popularity,
      @HiveField(8) String? posterPath,
      @HiveField(9) String? releaseDate,
      @HiveField(10) String? title,
      @HiveField(11) bool? video,
      @HiveField(12) double? voteAverage,
      @HiveField(13) int? voteCount});
}

/// @nodoc
class __$$_MovieResultCopyWithImpl<$Res>
    extends _$MovieResultCopyWithImpl<$Res, _$_MovieResult>
    implements _$$_MovieResultCopyWith<$Res> {
  __$$_MovieResultCopyWithImpl(
      _$_MovieResult _value, $Res Function(_$_MovieResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? genreIds = freezed,
    Object? id = null,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_$_MovieResult(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
@HiveType(typeId: 0, adapterName: 'MovieAdapter')
class _$_MovieResult implements _MovieResult {
  const _$_MovieResult(
      {@HiveField(0) required this.adult,
      @HiveField(1) required this.backdropPath,
      @HiveField(2) required final List<int>? genreIds,
      @HiveField(3) required this.id,
      @HiveField(4) required this.originalLanguage,
      @HiveField(5) required this.originalTitle,
      @HiveField(6) required this.overview,
      @HiveField(7) required this.popularity,
      @HiveField(8) required this.posterPath,
      @HiveField(9) required this.releaseDate,
      @HiveField(10) required this.title,
      @HiveField(11) required this.video,
      @HiveField(12) required this.voteAverage,
      @HiveField(13) required this.voteCount})
      : _genreIds = genreIds;

  factory _$_MovieResult.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResultFromJson(json);

  @override
  @HiveField(0)
  final bool? adult;
  @override
  @HiveField(1)
  final String? backdropPath;
  final List<int>? _genreIds;
  @override
  @HiveField(2)
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(3)
  final int id;
  @override
  @HiveField(4)
  final String? originalLanguage;
  @override
  @HiveField(5)
  final String? originalTitle;
  @override
  @HiveField(6)
  final String? overview;
  @override
  @HiveField(7)
  final double? popularity;
  @override
  @HiveField(8)
  final String? posterPath;
  @override
  @HiveField(9)
  final String? releaseDate;
  @override
  @HiveField(10)
  final String? title;
  @override
  @HiveField(11)
  final bool? video;
  @override
  @HiveField(12)
  final double? voteAverage;
  @override
  @HiveField(13)
  final int? voteCount;

  @override
  String toString() {
    return 'MovieResult(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieResult &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieResultCopyWith<_$_MovieResult> get copyWith =>
      __$$_MovieResultCopyWithImpl<_$_MovieResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResultToJson(
      this,
    );
  }
}

abstract class _MovieResult implements MovieResult {
  const factory _MovieResult(
      {@HiveField(0) required final bool? adult,
      @HiveField(1) required final String? backdropPath,
      @HiveField(2) required final List<int>? genreIds,
      @HiveField(3) required final int id,
      @HiveField(4) required final String? originalLanguage,
      @HiveField(5) required final String? originalTitle,
      @HiveField(6) required final String? overview,
      @HiveField(7) required final double? popularity,
      @HiveField(8) required final String? posterPath,
      @HiveField(9) required final String? releaseDate,
      @HiveField(10) required final String? title,
      @HiveField(11) required final bool? video,
      @HiveField(12) required final double? voteAverage,
      @HiveField(13) required final int? voteCount}) = _$_MovieResult;

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$_MovieResult.fromJson;

  @override
  @HiveField(0)
  bool? get adult;
  @override
  @HiveField(1)
  String? get backdropPath;
  @override
  @HiveField(2)
  List<int>? get genreIds;
  @override
  @HiveField(3)
  int get id;
  @override
  @HiveField(4)
  String? get originalLanguage;
  @override
  @HiveField(5)
  String? get originalTitle;
  @override
  @HiveField(6)
  String? get overview;
  @override
  @HiveField(7)
  double? get popularity;
  @override
  @HiveField(8)
  String? get posterPath;
  @override
  @HiveField(9)
  String? get releaseDate;
  @override
  @HiveField(10)
  String? get title;
  @override
  @HiveField(11)
  bool? get video;
  @override
  @HiveField(12)
  double? get voteAverage;
  @override
  @HiveField(13)
  int? get voteCount;
  @override
  @JsonKey(ignore: true)
  _$$_MovieResultCopyWith<_$_MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
mixin _$MovieDetails {
  bool? get adult => throw _privateConstructorUsedError;
  String? get backdropPath => throw _privateConstructorUsedError;
  int? get budget => throw _privateConstructorUsedError;
  List<Genre>? get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get originalLanguage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double? get popularity => throw _privateConstructorUsedError;
  String? get posterPath => throw _privateConstructorUsedError;
  String get releaseDate => throw _privateConstructorUsedError;
  int? get revenue => throw _privateConstructorUsedError;
  int get runtime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  double? get voteAverage => throw _privateConstructorUsedError;
  int? get voteCount => throw _privateConstructorUsedError;
  ReleaseDateQuery? get releaseDates => throw _privateConstructorUsedError;
  Videos? get videos => throw _privateConstructorUsedError;
  Credits? get credits =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'watch/providers')
  WatchProviders? get watchProviders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res, MovieDetails>;
  @useResult
  $Res call(
      {bool? adult,
      String? backdropPath,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int id,
      String? originalLanguage,
      String title,
      String overview,
      double? popularity,
      String? posterPath,
      String releaseDate,
      int? revenue,
      int runtime,
      String? status,
      String? tagline,
      double? voteAverage,
      int? voteCount,
      ReleaseDateQuery? releaseDates,
      Videos? videos,
      Credits? credits,
      @JsonKey(name: 'watch/providers') WatchProviders? watchProviders});

  $ReleaseDateQueryCopyWith<$Res>? get releaseDates;
  $VideosCopyWith<$Res>? get videos;
  $CreditsCopyWith<$Res>? get credits;
  $WatchProvidersCopyWith<$Res>? get watchProviders;
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res, $Val extends MovieDetails>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = null,
    Object? originalLanguage = freezed,
    Object? title = null,
    Object? overview = null,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? revenue = freezed,
    Object? runtime = null,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? releaseDates = freezed,
    Object? videos = freezed,
    Object? credits = freezed,
    Object? watchProviders = freezed,
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
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDates: freezed == releaseDates
          ? _value.releaseDates
          : releaseDates // ignore: cast_nullable_to_non_nullable
              as ReleaseDateQuery?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credits?,
      watchProviders: freezed == watchProviders
          ? _value.watchProviders
          : watchProviders // ignore: cast_nullable_to_non_nullable
              as WatchProviders?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReleaseDateQueryCopyWith<$Res>? get releaseDates {
    if (_value.releaseDates == null) {
      return null;
    }

    return $ReleaseDateQueryCopyWith<$Res>(_value.releaseDates!, (value) {
      return _then(_value.copyWith(releaseDates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideosCopyWith<$Res>? get videos {
    if (_value.videos == null) {
      return null;
    }

    return $VideosCopyWith<$Res>(_value.videos!, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditsCopyWith<$Res>? get credits {
    if (_value.credits == null) {
      return null;
    }

    return $CreditsCopyWith<$Res>(_value.credits!, (value) {
      return _then(_value.copyWith(credits: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WatchProvidersCopyWith<$Res>? get watchProviders {
    if (_value.watchProviders == null) {
      return null;
    }

    return $WatchProvidersCopyWith<$Res>(_value.watchProviders!, (value) {
      return _then(_value.copyWith(watchProviders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$$_MovieDetailsCopyWith(
          _$_MovieDetails value, $Res Function(_$_MovieDetails) then) =
      __$$_MovieDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? adult,
      String? backdropPath,
      int? budget,
      List<Genre>? genres,
      String? homepage,
      int id,
      String? originalLanguage,
      String title,
      String overview,
      double? popularity,
      String? posterPath,
      String releaseDate,
      int? revenue,
      int runtime,
      String? status,
      String? tagline,
      double? voteAverage,
      int? voteCount,
      ReleaseDateQuery? releaseDates,
      Videos? videos,
      Credits? credits,
      @JsonKey(name: 'watch/providers') WatchProviders? watchProviders});

  @override
  $ReleaseDateQueryCopyWith<$Res>? get releaseDates;
  @override
  $VideosCopyWith<$Res>? get videos;
  @override
  $CreditsCopyWith<$Res>? get credits;
  @override
  $WatchProvidersCopyWith<$Res>? get watchProviders;
}

/// @nodoc
class __$$_MovieDetailsCopyWithImpl<$Res>
    extends _$MovieDetailsCopyWithImpl<$Res, _$_MovieDetails>
    implements _$$_MovieDetailsCopyWith<$Res> {
  __$$_MovieDetailsCopyWithImpl(
      _$_MovieDetails _value, $Res Function(_$_MovieDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = null,
    Object? originalLanguage = freezed,
    Object? title = null,
    Object? overview = null,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? revenue = freezed,
    Object? runtime = null,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? releaseDates = freezed,
    Object? videos = freezed,
    Object? credits = freezed,
    Object? watchProviders = freezed,
  }) {
    return _then(_$_MovieDetails(
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      revenue: freezed == revenue
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int?,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      voteCount: freezed == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int?,
      releaseDates: freezed == releaseDates
          ? _value.releaseDates
          : releaseDates // ignore: cast_nullable_to_non_nullable
              as ReleaseDateQuery?,
      videos: freezed == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Videos?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as Credits?,
      watchProviders: freezed == watchProviders
          ? _value.watchProviders
          : watchProviders // ignore: cast_nullable_to_non_nullable
              as WatchProviders?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {required this.adult,
      required this.backdropPath,
      required this.budget,
      required final List<Genre>? genres,
      required this.homepage,
      required this.id,
      required this.originalLanguage,
      required this.title,
      required this.overview,
      required this.popularity,
      required this.posterPath,
      required this.releaseDate,
      required this.revenue,
      required this.runtime,
      required this.status,
      required this.tagline,
      required this.voteAverage,
      required this.voteCount,
      required this.releaseDates,
      this.videos,
      this.credits,
      @JsonKey(name: 'watch/providers') this.watchProviders})
      : _genres = genres;

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  final bool? adult;
  @override
  final String? backdropPath;
  @override
  final int? budget;
  final List<Genre>? _genres;
  @override
  List<Genre>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? homepage;
  @override
  final int id;
  @override
  final String? originalLanguage;
  @override
  final String title;
  @override
  final String overview;
  @override
  final double? popularity;
  @override
  final String? posterPath;
  @override
  final String releaseDate;
  @override
  final int? revenue;
  @override
  final int runtime;
  @override
  final String? status;
  @override
  final String? tagline;
  @override
  final double? voteAverage;
  @override
  final int? voteCount;
  @override
  final ReleaseDateQuery? releaseDates;
  @override
  final Videos? videos;
  @override
  final Credits? credits;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'watch/providers')
  final WatchProviders? watchProviders;

  @override
  String toString() {
    return 'MovieDetails(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, originalLanguage: $originalLanguage, title: $title, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, voteAverage: $voteAverage, voteCount: $voteCount, releaseDates: $releaseDates, videos: $videos, credits: $credits, watchProviders: $watchProviders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetails &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.voteCount, voteCount) ||
                other.voteCount == voteCount) &&
            (identical(other.releaseDates, releaseDates) ||
                other.releaseDates == releaseDates) &&
            (identical(other.videos, videos) || other.videos == videos) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.watchProviders, watchProviders) ||
                other.watchProviders == watchProviders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        adult,
        backdropPath,
        budget,
        const DeepCollectionEquality().hash(_genres),
        homepage,
        id,
        originalLanguage,
        title,
        overview,
        popularity,
        posterPath,
        releaseDate,
        revenue,
        runtime,
        status,
        tagline,
        voteAverage,
        voteCount,
        releaseDates,
        videos,
        credits,
        watchProviders
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      __$$_MovieDetailsCopyWithImpl<_$_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsToJson(
      this,
    );
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
      {required final bool? adult,
      required final String? backdropPath,
      required final int? budget,
      required final List<Genre>? genres,
      required final String? homepage,
      required final int id,
      required final String? originalLanguage,
      required final String title,
      required final String overview,
      required final double? popularity,
      required final String? posterPath,
      required final String releaseDate,
      required final int? revenue,
      required final int runtime,
      required final String? status,
      required final String? tagline,
      required final double? voteAverage,
      required final int? voteCount,
      required final ReleaseDateQuery? releaseDates,
      final Videos? videos,
      final Credits? credits,
      @JsonKey(name: 'watch/providers')
          final WatchProviders? watchProviders}) = _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  bool? get adult;
  @override
  String? get backdropPath;
  @override
  int? get budget;
  @override
  List<Genre>? get genres;
  @override
  String? get homepage;
  @override
  int get id;
  @override
  String? get originalLanguage;
  @override
  String get title;
  @override
  String get overview;
  @override
  double? get popularity;
  @override
  String? get posterPath;
  @override
  String get releaseDate;
  @override
  int? get revenue;
  @override
  int get runtime;
  @override
  String? get status;
  @override
  String? get tagline;
  @override
  double? get voteAverage;
  @override
  int? get voteCount;
  @override
  ReleaseDateQuery? get releaseDates;
  @override
  Videos? get videos;
  @override
  Credits? get credits;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'watch/providers')
  WatchProviders? get watchProviders;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailsCopyWith<_$_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

Genre _$GenreFromJson(Map<String, dynamic> json) {
  return _Genre.fromJson(json);
}

/// @nodoc
mixin _$Genre {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreCopyWith<Genre> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreCopyWith<$Res> {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) then) =
      _$GenreCopyWithImpl<$Res, Genre>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenreCopyWithImpl<$Res, $Val extends Genre>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$$_GenreCopyWith(_$_Genre value, $Res Function(_$_Genre) then) =
      __$$_GenreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GenreCopyWithImpl<$Res> extends _$GenreCopyWithImpl<$Res, _$_Genre>
    implements _$$_GenreCopyWith<$Res> {
  __$$_GenreCopyWithImpl(_$_Genre _value, $Res Function(_$_Genre) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_Genre(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Genre implements _Genre {
  const _$_Genre({required this.id, required this.name});

  factory _$_Genre.fromJson(Map<String, dynamic> json) =>
      _$$_GenreFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Genre(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Genre &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      __$$_GenreCopyWithImpl<_$_Genre>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreToJson(
      this,
    );
  }
}

abstract class _Genre implements Genre {
  const factory _Genre({required final int id, required final String name}) =
      _$_Genre;

  factory _Genre.fromJson(Map<String, dynamic> json) = _$_Genre.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenreCopyWith<_$_Genre> get copyWith =>
      throw _privateConstructorUsedError;
}

ReleaseDateQuery _$ReleaseDateQueryFromJson(Map<String, dynamic> json) {
  return _ReleaseDateQuery.fromJson(json);
}

/// @nodoc
mixin _$ReleaseDateQuery {
  int? get id => throw _privateConstructorUsedError;
  List<Releases> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseDateQueryCopyWith<ReleaseDateQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseDateQueryCopyWith<$Res> {
  factory $ReleaseDateQueryCopyWith(
          ReleaseDateQuery value, $Res Function(ReleaseDateQuery) then) =
      _$ReleaseDateQueryCopyWithImpl<$Res, ReleaseDateQuery>;
  @useResult
  $Res call({int? id, List<Releases> results});
}

/// @nodoc
class _$ReleaseDateQueryCopyWithImpl<$Res, $Val extends ReleaseDateQuery>
    implements $ReleaseDateQueryCopyWith<$Res> {
  _$ReleaseDateQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Releases>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReleaseDateQueryCopyWith<$Res>
    implements $ReleaseDateQueryCopyWith<$Res> {
  factory _$$_ReleaseDateQueryCopyWith(
          _$_ReleaseDateQuery value, $Res Function(_$_ReleaseDateQuery) then) =
      __$$_ReleaseDateQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<Releases> results});
}

/// @nodoc
class __$$_ReleaseDateQueryCopyWithImpl<$Res>
    extends _$ReleaseDateQueryCopyWithImpl<$Res, _$_ReleaseDateQuery>
    implements _$$_ReleaseDateQueryCopyWith<$Res> {
  __$$_ReleaseDateQueryCopyWithImpl(
      _$_ReleaseDateQuery _value, $Res Function(_$_ReleaseDateQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? results = null,
  }) {
    return _then(_$_ReleaseDateQuery(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Releases>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReleaseDateQuery implements _ReleaseDateQuery {
  const _$_ReleaseDateQuery(
      {required this.id, required final List<Releases> results})
      : _results = results;

  factory _$_ReleaseDateQuery.fromJson(Map<String, dynamic> json) =>
      _$$_ReleaseDateQueryFromJson(json);

  @override
  final int? id;
  final List<Releases> _results;
  @override
  List<Releases> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ReleaseDateQuery(id: $id, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReleaseDateQuery &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReleaseDateQueryCopyWith<_$_ReleaseDateQuery> get copyWith =>
      __$$_ReleaseDateQueryCopyWithImpl<_$_ReleaseDateQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleaseDateQueryToJson(
      this,
    );
  }
}

abstract class _ReleaseDateQuery implements ReleaseDateQuery {
  const factory _ReleaseDateQuery(
      {required final int? id,
      required final List<Releases> results}) = _$_ReleaseDateQuery;

  factory _ReleaseDateQuery.fromJson(Map<String, dynamic> json) =
      _$_ReleaseDateQuery.fromJson;

  @override
  int? get id;
  @override
  List<Releases> get results;
  @override
  @JsonKey(ignore: true)
  _$$_ReleaseDateQueryCopyWith<_$_ReleaseDateQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

Releases _$ReleasesFromJson(Map<String, dynamic> json) {
  return _Releases.fromJson(json);
}

/// @nodoc
mixin _$Releases {
// ignore: invalid_annotation_target
  @JsonKey(name: 'iso_3166_1')
  String get iso31661 => throw _privateConstructorUsedError;
  List<ReleaseDateResult> get releaseDates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleasesCopyWith<Releases> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleasesCopyWith<$Res> {
  factory $ReleasesCopyWith(Releases value, $Res Function(Releases) then) =
      _$ReleasesCopyWithImpl<$Res, Releases>;
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String iso31661,
      List<ReleaseDateResult> releaseDates});
}

/// @nodoc
class _$ReleasesCopyWithImpl<$Res, $Val extends Releases>
    implements $ReleasesCopyWith<$Res> {
  _$ReleasesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? releaseDates = null,
  }) {
    return _then(_value.copyWith(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDates: null == releaseDates
          ? _value.releaseDates
          : releaseDates // ignore: cast_nullable_to_non_nullable
              as List<ReleaseDateResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReleasesCopyWith<$Res> implements $ReleasesCopyWith<$Res> {
  factory _$$_ReleasesCopyWith(
          _$_Releases value, $Res Function(_$_Releases) then) =
      __$$_ReleasesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String iso31661,
      List<ReleaseDateResult> releaseDates});
}

/// @nodoc
class __$$_ReleasesCopyWithImpl<$Res>
    extends _$ReleasesCopyWithImpl<$Res, _$_Releases>
    implements _$$_ReleasesCopyWith<$Res> {
  __$$_ReleasesCopyWithImpl(
      _$_Releases _value, $Res Function(_$_Releases) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso31661 = null,
    Object? releaseDates = null,
  }) {
    return _then(_$_Releases(
      iso31661: null == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDates: null == releaseDates
          ? _value._releaseDates
          : releaseDates // ignore: cast_nullable_to_non_nullable
              as List<ReleaseDateResult>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Releases implements _Releases {
  const _$_Releases(
      {@JsonKey(name: 'iso_3166_1') required this.iso31661,
      required final List<ReleaseDateResult> releaseDates})
      : _releaseDates = releaseDates;

  factory _$_Releases.fromJson(Map<String, dynamic> json) =>
      _$$_ReleasesFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'iso_3166_1')
  final String iso31661;
  final List<ReleaseDateResult> _releaseDates;
  @override
  List<ReleaseDateResult> get releaseDates {
    if (_releaseDates is EqualUnmodifiableListView) return _releaseDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_releaseDates);
  }

  @override
  String toString() {
    return 'Releases(iso31661: $iso31661, releaseDates: $releaseDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Releases &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            const DeepCollectionEquality()
                .equals(other._releaseDates, _releaseDates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso31661,
      const DeepCollectionEquality().hash(_releaseDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReleasesCopyWith<_$_Releases> get copyWith =>
      __$$_ReleasesCopyWithImpl<_$_Releases>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleasesToJson(
      this,
    );
  }
}

abstract class _Releases implements Releases {
  const factory _Releases(
      {@JsonKey(name: 'iso_3166_1') required final String iso31661,
      required final List<ReleaseDateResult> releaseDates}) = _$_Releases;

  factory _Releases.fromJson(Map<String, dynamic> json) = _$_Releases.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'iso_3166_1')
  String get iso31661;
  @override
  List<ReleaseDateResult> get releaseDates;
  @override
  @JsonKey(ignore: true)
  _$$_ReleasesCopyWith<_$_Releases> get copyWith =>
      throw _privateConstructorUsedError;
}

ReleaseDateResult _$ReleaseDateResultFromJson(Map<String, dynamic> json) {
  return _ReleaseDateResult.fromJson(json);
}

/// @nodoc
mixin _$ReleaseDateResult {
  String get releaseDate => throw _privateConstructorUsedError;
  String get certification => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseDateResultCopyWith<ReleaseDateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseDateResultCopyWith<$Res> {
  factory $ReleaseDateResultCopyWith(
          ReleaseDateResult value, $Res Function(ReleaseDateResult) then) =
      _$ReleaseDateResultCopyWithImpl<$Res, ReleaseDateResult>;
  @useResult
  $Res call({String releaseDate, String certification, String? note, int type});
}

/// @nodoc
class _$ReleaseDateResultCopyWithImpl<$Res, $Val extends ReleaseDateResult>
    implements $ReleaseDateResultCopyWith<$Res> {
  _$ReleaseDateResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = null,
    Object? certification = null,
    Object? note = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      certification: null == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReleaseDateResultCopyWith<$Res>
    implements $ReleaseDateResultCopyWith<$Res> {
  factory _$$_ReleaseDateResultCopyWith(_$_ReleaseDateResult value,
          $Res Function(_$_ReleaseDateResult) then) =
      __$$_ReleaseDateResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String releaseDate, String certification, String? note, int type});
}

/// @nodoc
class __$$_ReleaseDateResultCopyWithImpl<$Res>
    extends _$ReleaseDateResultCopyWithImpl<$Res, _$_ReleaseDateResult>
    implements _$$_ReleaseDateResultCopyWith<$Res> {
  __$$_ReleaseDateResultCopyWithImpl(
      _$_ReleaseDateResult _value, $Res Function(_$_ReleaseDateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releaseDate = null,
    Object? certification = null,
    Object? note = freezed,
    Object? type = null,
  }) {
    return _then(_$_ReleaseDateResult(
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      certification: null == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ReleaseDateResult implements _ReleaseDateResult {
  const _$_ReleaseDateResult(
      {required this.releaseDate,
      required this.certification,
      required this.note,
      required this.type});

  factory _$_ReleaseDateResult.fromJson(Map<String, dynamic> json) =>
      _$$_ReleaseDateResultFromJson(json);

  @override
  final String releaseDate;
  @override
  final String certification;
  @override
  final String? note;
  @override
  final int type;

  @override
  String toString() {
    return 'ReleaseDateResult(releaseDate: $releaseDate, certification: $certification, note: $note, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReleaseDateResult &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.certification, certification) ||
                other.certification == certification) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, releaseDate, certification, note, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReleaseDateResultCopyWith<_$_ReleaseDateResult> get copyWith =>
      __$$_ReleaseDateResultCopyWithImpl<_$_ReleaseDateResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReleaseDateResultToJson(
      this,
    );
  }
}

abstract class _ReleaseDateResult implements ReleaseDateResult {
  const factory _ReleaseDateResult(
      {required final String releaseDate,
      required final String certification,
      required final String? note,
      required final int type}) = _$_ReleaseDateResult;

  factory _ReleaseDateResult.fromJson(Map<String, dynamic> json) =
      _$_ReleaseDateResult.fromJson;

  @override
  String get releaseDate;
  @override
  String get certification;
  @override
  String? get note;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$$_ReleaseDateResultCopyWith<_$_ReleaseDateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Videos _$VideosFromJson(Map<String, dynamic> json) {
  return _Videos.fromJson(json);
}

/// @nodoc
mixin _$Videos {
  List<VideoResult>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideosCopyWith<Videos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res, Videos>;
  @useResult
  $Res call({List<VideoResult>? results});
}

/// @nodoc
class _$VideosCopyWithImpl<$Res, $Val extends Videos>
    implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$$_VideosCopyWith(_$_Videos value, $Res Function(_$_Videos) then) =
      __$$_VideosCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VideoResult>? results});
}

/// @nodoc
class __$$_VideosCopyWithImpl<$Res>
    extends _$VideosCopyWithImpl<$Res, _$_Videos>
    implements _$$_VideosCopyWith<$Res> {
  __$$_VideosCopyWithImpl(_$_Videos _value, $Res Function(_$_Videos) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_Videos(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<VideoResult>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Videos implements _Videos {
  const _$_Videos({required final List<VideoResult>? results})
      : _results = results;

  factory _$_Videos.fromJson(Map<String, dynamic> json) =>
      _$$_VideosFromJson(json);

  final List<VideoResult>? _results;
  @override
  List<VideoResult>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Videos(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Videos &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      __$$_VideosCopyWithImpl<_$_Videos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideosToJson(
      this,
    );
  }
}

abstract class _Videos implements Videos {
  const factory _Videos({required final List<VideoResult>? results}) =
      _$_Videos;

  factory _Videos.fromJson(Map<String, dynamic> json) = _$_Videos.fromJson;

  @override
  List<VideoResult>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_VideosCopyWith<_$_Videos> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoResult _$VideoResultFromJson(Map<String, dynamic> json) {
  return _VideoResult.fromJson(json);
}

/// @nodoc
mixin _$VideoResult {
  String? get iso6391 => throw _privateConstructorUsedError;
  String? get iso31661 => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get official => throw _privateConstructorUsedError;
  String? get publishedAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoResultCopyWith<VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResultCopyWith<$Res> {
  factory $VideoResultCopyWith(
          VideoResult value, $Res Function(VideoResult) then) =
      _$VideoResultCopyWithImpl<$Res, VideoResult>;
  @useResult
  $Res call(
      {String? iso6391,
      String? iso31661,
      String? name,
      String? key,
      String? site,
      int? size,
      String? type,
      bool? official,
      String? publishedAt,
      String? id});
}

/// @nodoc
class _$VideoResultCopyWithImpl<$Res, $Val extends VideoResult>
    implements $VideoResultCopyWith<$Res> {
  _$VideoResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? official = freezed,
    Object? publishedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoResultCopyWith<$Res>
    implements $VideoResultCopyWith<$Res> {
  factory _$$_VideoResultCopyWith(
          _$_VideoResult value, $Res Function(_$_VideoResult) then) =
      __$$_VideoResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? iso6391,
      String? iso31661,
      String? name,
      String? key,
      String? site,
      int? size,
      String? type,
      bool? official,
      String? publishedAt,
      String? id});
}

/// @nodoc
class __$$_VideoResultCopyWithImpl<$Res>
    extends _$VideoResultCopyWithImpl<$Res, _$_VideoResult>
    implements _$$_VideoResultCopyWith<$Res> {
  __$$_VideoResultCopyWithImpl(
      _$_VideoResult _value, $Res Function(_$_VideoResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iso6391 = freezed,
    Object? iso31661 = freezed,
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? official = freezed,
    Object? publishedAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_VideoResult(
      iso6391: freezed == iso6391
          ? _value.iso6391
          : iso6391 // ignore: cast_nullable_to_non_nullable
              as String?,
      iso31661: freezed == iso31661
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_VideoResult implements _VideoResult {
  const _$_VideoResult(
      {required this.iso6391,
      required this.iso31661,
      required this.name,
      required this.key,
      required this.site,
      required this.size,
      required this.type,
      required this.official,
      required this.publishedAt,
      required this.id});

  factory _$_VideoResult.fromJson(Map<String, dynamic> json) =>
      _$$_VideoResultFromJson(json);

  @override
  final String? iso6391;
  @override
  final String? iso31661;
  @override
  final String? name;
  @override
  final String? key;
  @override
  final String? site;
  @override
  final int? size;
  @override
  final String? type;
  @override
  final bool? official;
  @override
  final String? publishedAt;
  @override
  final String? id;

  @override
  String toString() {
    return 'VideoResult(iso6391: $iso6391, iso31661: $iso31661, name: $name, key: $key, site: $site, size: $size, type: $type, official: $official, publishedAt: $publishedAt, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoResult &&
            (identical(other.iso6391, iso6391) || other.iso6391 == iso6391) &&
            (identical(other.iso31661, iso31661) ||
                other.iso31661 == iso31661) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.official, official) ||
                other.official == official) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iso6391, iso31661, name, key,
      site, size, type, official, publishedAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoResultCopyWith<_$_VideoResult> get copyWith =>
      __$$_VideoResultCopyWithImpl<_$_VideoResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoResultToJson(
      this,
    );
  }
}

abstract class _VideoResult implements VideoResult {
  const factory _VideoResult(
      {required final String? iso6391,
      required final String? iso31661,
      required final String? name,
      required final String? key,
      required final String? site,
      required final int? size,
      required final String? type,
      required final bool? official,
      required final String? publishedAt,
      required final String? id}) = _$_VideoResult;

  factory _VideoResult.fromJson(Map<String, dynamic> json) =
      _$_VideoResult.fromJson;

  @override
  String? get iso6391;
  @override
  String? get iso31661;
  @override
  String? get name;
  @override
  String? get key;
  @override
  String? get site;
  @override
  int? get size;
  @override
  String? get type;
  @override
  bool? get official;
  @override
  String? get publishedAt;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_VideoResultCopyWith<_$_VideoResult> get copyWith =>
      throw _privateConstructorUsedError;
}

WatchProviders _$WatchProvidersFromJson(Map<String, dynamic> json) {
  return _WatchProviders.fromJson(json);
}

/// @nodoc
mixin _$WatchProviders {
  Map<String, WatchProviderResult>? get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchProvidersCopyWith<WatchProviders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchProvidersCopyWith<$Res> {
  factory $WatchProvidersCopyWith(
          WatchProviders value, $Res Function(WatchProviders) then) =
      _$WatchProvidersCopyWithImpl<$Res, WatchProviders>;
  @useResult
  $Res call({Map<String, WatchProviderResult>? results});
}

/// @nodoc
class _$WatchProvidersCopyWithImpl<$Res, $Val extends WatchProviders>
    implements $WatchProvidersCopyWith<$Res> {
  _$WatchProvidersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, WatchProviderResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WatchProvidersCopyWith<$Res>
    implements $WatchProvidersCopyWith<$Res> {
  factory _$$_WatchProvidersCopyWith(
          _$_WatchProviders value, $Res Function(_$_WatchProviders) then) =
      __$$_WatchProvidersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, WatchProviderResult>? results});
}

/// @nodoc
class __$$_WatchProvidersCopyWithImpl<$Res>
    extends _$WatchProvidersCopyWithImpl<$Res, _$_WatchProviders>
    implements _$$_WatchProvidersCopyWith<$Res> {
  __$$_WatchProvidersCopyWithImpl(
      _$_WatchProviders _value, $Res Function(_$_WatchProviders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_WatchProviders(
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, WatchProviderResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WatchProviders implements _WatchProviders {
  const _$_WatchProviders(
      {required final Map<String, WatchProviderResult>? results})
      : _results = results;

  factory _$_WatchProviders.fromJson(Map<String, dynamic> json) =>
      _$$_WatchProvidersFromJson(json);

  final Map<String, WatchProviderResult>? _results;
  @override
  Map<String, WatchProviderResult>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WatchProviders(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchProviders &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchProvidersCopyWith<_$_WatchProviders> get copyWith =>
      __$$_WatchProvidersCopyWithImpl<_$_WatchProviders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WatchProvidersToJson(
      this,
    );
  }
}

abstract class _WatchProviders implements WatchProviders {
  const factory _WatchProviders(
          {required final Map<String, WatchProviderResult>? results}) =
      _$_WatchProviders;

  factory _WatchProviders.fromJson(Map<String, dynamic> json) =
      _$_WatchProviders.fromJson;

  @override
  Map<String, WatchProviderResult>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_WatchProvidersCopyWith<_$_WatchProviders> get copyWith =>
      throw _privateConstructorUsedError;
}

WatchProviderResult _$WatchProviderResultFromJson(Map<String, dynamic> json) {
  return _WatchProviderResult.fromJson(json);
}

/// @nodoc
mixin _$WatchProviderResult {
  String? get link => throw _privateConstructorUsedError;
  List<MovieWatchProvider>? get flatrate => throw _privateConstructorUsedError;
  List<MovieWatchProvider>? get rent => throw _privateConstructorUsedError;
  List<MovieWatchProvider>? get buy => throw _privateConstructorUsedError;
  List<MovieWatchProvider>? get ads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WatchProviderResultCopyWith<WatchProviderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchProviderResultCopyWith<$Res> {
  factory $WatchProviderResultCopyWith(
          WatchProviderResult value, $Res Function(WatchProviderResult) then) =
      _$WatchProviderResultCopyWithImpl<$Res, WatchProviderResult>;
  @useResult
  $Res call(
      {String? link,
      List<MovieWatchProvider>? flatrate,
      List<MovieWatchProvider>? rent,
      List<MovieWatchProvider>? buy,
      List<MovieWatchProvider>? ads});
}

/// @nodoc
class _$WatchProviderResultCopyWithImpl<$Res, $Val extends WatchProviderResult>
    implements $WatchProviderResultCopyWith<$Res> {
  _$WatchProviderResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? flatrate = freezed,
    Object? rent = freezed,
    Object? buy = freezed,
    Object? ads = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      flatrate: freezed == flatrate
          ? _value.flatrate
          : flatrate // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
      buy: freezed == buy
          ? _value.buy
          : buy // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
      ads: freezed == ads
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WatchProviderResultCopyWith<$Res>
    implements $WatchProviderResultCopyWith<$Res> {
  factory _$$_WatchProviderResultCopyWith(_$_WatchProviderResult value,
          $Res Function(_$_WatchProviderResult) then) =
      __$$_WatchProviderResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? link,
      List<MovieWatchProvider>? flatrate,
      List<MovieWatchProvider>? rent,
      List<MovieWatchProvider>? buy,
      List<MovieWatchProvider>? ads});
}

/// @nodoc
class __$$_WatchProviderResultCopyWithImpl<$Res>
    extends _$WatchProviderResultCopyWithImpl<$Res, _$_WatchProviderResult>
    implements _$$_WatchProviderResultCopyWith<$Res> {
  __$$_WatchProviderResultCopyWithImpl(_$_WatchProviderResult _value,
      $Res Function(_$_WatchProviderResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? flatrate = freezed,
    Object? rent = freezed,
    Object? buy = freezed,
    Object? ads = freezed,
  }) {
    return _then(_$_WatchProviderResult(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      flatrate: freezed == flatrate
          ? _value._flatrate
          : flatrate // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
      rent: freezed == rent
          ? _value._rent
          : rent // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
      buy: freezed == buy
          ? _value._buy
          : buy // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
      ads: freezed == ads
          ? _value._ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<MovieWatchProvider>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WatchProviderResult implements _WatchProviderResult {
  const _$_WatchProviderResult(
      {required this.link,
      required final List<MovieWatchProvider>? flatrate,
      required final List<MovieWatchProvider>? rent,
      required final List<MovieWatchProvider>? buy,
      required final List<MovieWatchProvider>? ads})
      : _flatrate = flatrate,
        _rent = rent,
        _buy = buy,
        _ads = ads;

  factory _$_WatchProviderResult.fromJson(Map<String, dynamic> json) =>
      _$$_WatchProviderResultFromJson(json);

  @override
  final String? link;
  final List<MovieWatchProvider>? _flatrate;
  @override
  List<MovieWatchProvider>? get flatrate {
    final value = _flatrate;
    if (value == null) return null;
    if (_flatrate is EqualUnmodifiableListView) return _flatrate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieWatchProvider>? _rent;
  @override
  List<MovieWatchProvider>? get rent {
    final value = _rent;
    if (value == null) return null;
    if (_rent is EqualUnmodifiableListView) return _rent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieWatchProvider>? _buy;
  @override
  List<MovieWatchProvider>? get buy {
    final value = _buy;
    if (value == null) return null;
    if (_buy is EqualUnmodifiableListView) return _buy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MovieWatchProvider>? _ads;
  @override
  List<MovieWatchProvider>? get ads {
    final value = _ads;
    if (value == null) return null;
    if (_ads is EqualUnmodifiableListView) return _ads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WatchProviderResult(link: $link, flatrate: $flatrate, rent: $rent, buy: $buy, ads: $ads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchProviderResult &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._flatrate, _flatrate) &&
            const DeepCollectionEquality().equals(other._rent, _rent) &&
            const DeepCollectionEquality().equals(other._buy, _buy) &&
            const DeepCollectionEquality().equals(other._ads, _ads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      link,
      const DeepCollectionEquality().hash(_flatrate),
      const DeepCollectionEquality().hash(_rent),
      const DeepCollectionEquality().hash(_buy),
      const DeepCollectionEquality().hash(_ads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchProviderResultCopyWith<_$_WatchProviderResult> get copyWith =>
      __$$_WatchProviderResultCopyWithImpl<_$_WatchProviderResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WatchProviderResultToJson(
      this,
    );
  }
}

abstract class _WatchProviderResult implements WatchProviderResult {
  const factory _WatchProviderResult(
      {required final String? link,
      required final List<MovieWatchProvider>? flatrate,
      required final List<MovieWatchProvider>? rent,
      required final List<MovieWatchProvider>? buy,
      required final List<MovieWatchProvider>? ads}) = _$_WatchProviderResult;

  factory _WatchProviderResult.fromJson(Map<String, dynamic> json) =
      _$_WatchProviderResult.fromJson;

  @override
  String? get link;
  @override
  List<MovieWatchProvider>? get flatrate;
  @override
  List<MovieWatchProvider>? get rent;
  @override
  List<MovieWatchProvider>? get buy;
  @override
  List<MovieWatchProvider>? get ads;
  @override
  @JsonKey(ignore: true)
  _$$_WatchProviderResultCopyWith<_$_WatchProviderResult> get copyWith =>
      throw _privateConstructorUsedError;
}

Credits _$CreditsFromJson(Map<String, dynamic> json) {
  return _Credits.fromJson(json);
}

/// @nodoc
mixin _$Credits {
  List<Cast>? get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditsCopyWith<Credits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditsCopyWith<$Res> {
  factory $CreditsCopyWith(Credits value, $Res Function(Credits) then) =
      _$CreditsCopyWithImpl<$Res, Credits>;
  @useResult
  $Res call({List<Cast>? cast});
}

/// @nodoc
class _$CreditsCopyWithImpl<$Res, $Val extends Credits>
    implements $CreditsCopyWith<$Res> {
  _$CreditsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: freezed == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditsCopyWith<$Res> implements $CreditsCopyWith<$Res> {
  factory _$$_CreditsCopyWith(
          _$_Credits value, $Res Function(_$_Credits) then) =
      __$$_CreditsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast>? cast});
}

/// @nodoc
class __$$_CreditsCopyWithImpl<$Res>
    extends _$CreditsCopyWithImpl<$Res, _$_Credits>
    implements _$$_CreditsCopyWith<$Res> {
  __$$_CreditsCopyWithImpl(_$_Credits _value, $Res Function(_$_Credits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = freezed,
  }) {
    return _then(_$_Credits(
      cast: freezed == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Credits implements _Credits {
  const _$_Credits({required final List<Cast>? cast}) : _cast = cast;

  factory _$_Credits.fromJson(Map<String, dynamic> json) =>
      _$$_CreditsFromJson(json);

  final List<Cast>? _cast;
  @override
  List<Cast>? get cast {
    final value = _cast;
    if (value == null) return null;
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Credits(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Credits &&
            const DeepCollectionEquality().equals(other._cast, _cast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cast));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditsCopyWith<_$_Credits> get copyWith =>
      __$$_CreditsCopyWithImpl<_$_Credits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreditsToJson(
      this,
    );
  }
}

abstract class _Credits implements Credits {
  const factory _Credits({required final List<Cast>? cast}) = _$_Credits;

  factory _Credits.fromJson(Map<String, dynamic> json) = _$_Credits.fromJson;

  @override
  List<Cast>? get cast;
  @override
  @JsonKey(ignore: true)
  _$$_CreditsCopyWith<_$_Credits> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  String? get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call({int? id, String? name, String? character, String? profilePath});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$_CastCopyWith(_$_Cast value, $Res Function(_$_Cast) then) =
      __$$_CastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? character, String? profilePath});
}

/// @nodoc
class __$$_CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res, _$_Cast>
    implements _$$_CastCopyWith<$Res> {
  __$$_CastCopyWithImpl(_$_Cast _value, $Res Function(_$_Cast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$_Cast(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Cast implements _Cast {
  const _$_Cast(
      {required this.id,
      required this.name,
      required this.character,
      required this.profilePath});

  factory _$_Cast.fromJson(Map<String, dynamic> json) => _$$_CastFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? character;
  @override
  final String? profilePath;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, character: $character, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cast &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, character, profilePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CastCopyWith<_$_Cast> get copyWith =>
      __$$_CastCopyWithImpl<_$_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CastToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required final int? id,
      required final String? name,
      required final String? character,
      required final String? profilePath}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get character;
  @override
  String? get profilePath;
  @override
  @JsonKey(ignore: true)
  _$$_CastCopyWith<_$_Cast> get copyWith => throw _privateConstructorUsedError;
}

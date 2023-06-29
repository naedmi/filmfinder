// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      budget: json['budget'] as int?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String?,
      title: json['title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String,
      revenue: json['revenue'] as int?,
      runtime: json['runtime'] as int,
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      releaseDates: json['release_dates'] == null
          ? null
          : ReleaseDateQuery.fromJson(
              json['release_dates'] as Map<String, dynamic>),
      videos: json['videos'] == null
          ? null
          : Videos.fromJson(json['videos'] as Map<String, dynamic>),
      credits: json['credits'] == null
          ? null
          : Credits.fromJson(json['credits'] as Map<String, dynamic>),
      watchProviders: json['watch/providers'] == null
          ? null
          : WatchProviders.fromJson(
              json['watch/providers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'title': instance.title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'release_dates': instance.releaseDates,
      'videos': instance.videos,
      'credits': instance.credits,
      'watch/providers': instance.watchProviders,
    };

_$_Genre _$$_GenreFromJson(Map<String, dynamic> json) => _$_Genre(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_GenreToJson(_$_Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ReleaseDateQuery _$$_ReleaseDateQueryFromJson(Map<String, dynamic> json) =>
    _$_ReleaseDateQuery(
      id: json['id'] as int?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Releases.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReleaseDateQueryToJson(_$_ReleaseDateQuery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };

_$_Releases _$$_ReleasesFromJson(Map<String, dynamic> json) => _$_Releases(
      iso31661: json['iso_3166_1'] as String,
      releaseDates: (json['release_dates'] as List<dynamic>)
          .map((e) => ReleaseDateResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReleasesToJson(_$_Releases instance) =>
    <String, dynamic>{
      'iso_3166_1': instance.iso31661,
      'release_dates': instance.releaseDates,
    };

_$_ReleaseDateResult _$$_ReleaseDateResultFromJson(Map<String, dynamic> json) =>
    _$_ReleaseDateResult(
      releaseDate: json['release_date'] as String,
      certification: json['certification'] as String,
      note: json['note'] as String?,
      type: json['type'] as int,
    );

Map<String, dynamic> _$$_ReleaseDateResultToJson(
        _$_ReleaseDateResult instance) =>
    <String, dynamic>{
      'release_date': instance.releaseDate,
      'certification': instance.certification,
      'note': instance.note,
      'type': instance.type,
    };

_$_Videos _$$_VideosFromJson(Map<String, dynamic> json) => _$_Videos(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => VideoResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VideosToJson(_$_Videos instance) => <String, dynamic>{
      'results': instance.results,
    };

_$_VideoResult _$$_VideoResultFromJson(Map<String, dynamic> json) =>
    _$_VideoResult(
      iso6391: json['iso6391'] as String?,
      iso31661: json['iso31661'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      site: json['site'] as String?,
      size: json['size'] as int?,
      type: json['type'] as String?,
      official: json['official'] as bool?,
      publishedAt: json['published_at'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_VideoResultToJson(_$_VideoResult instance) =>
    <String, dynamic>{
      'iso6391': instance.iso6391,
      'iso31661': instance.iso31661,
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt,
      'id': instance.id,
    };

_$_WatchProviders _$$_WatchProvidersFromJson(Map<String, dynamic> json) =>
    _$_WatchProviders(
      results: (json['results'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, WatchProviderResult.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_WatchProvidersToJson(_$_WatchProviders instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_WatchProviderResult _$$_WatchProviderResultFromJson(
        Map<String, dynamic> json) =>
    _$_WatchProviderResult(
      link: json['link'] as String?,
      flatrate: (json['flatrate'] as List<dynamic>?)
          ?.map((e) => MovieWatchProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
      rent: (json['rent'] as List<dynamic>?)
          ?.map((e) => MovieWatchProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
      buy: (json['buy'] as List<dynamic>?)
          ?.map((e) => MovieWatchProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
      ads: (json['ads'] as List<dynamic>?)
          ?.map((e) => MovieWatchProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WatchProviderResultToJson(
        _$_WatchProviderResult instance) =>
    <String, dynamic>{
      'link': instance.link,
      'flatrate': instance.flatrate,
      'rent': instance.rent,
      'buy': instance.buy,
      'ads': instance.ads,
    };

_$_Credits _$$_CreditsFromJson(Map<String, dynamic> json) => _$_Credits(
      cast: (json['cast'] as List<dynamic>?)
          ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CreditsToJson(_$_Credits instance) =>
    <String, dynamic>{
      'cast': instance.cast,
    };

_$_Cast _$$_CastFromJson(Map<String, dynamic> json) => _$_Cast(
      id: json['id'] as int?,
      name: json['name'] as String?,
      character: json['character'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$_CastToJson(_$_Cast instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'profile_path': instance.profilePath,
    };

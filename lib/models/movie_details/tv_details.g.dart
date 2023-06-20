// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvDetails _$$_TvDetailsFromJson(Map<String, dynamic> json) => _$_TvDetails(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      homepage: json['homepage'] as String?,
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String?,
      name: json['name'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
      numberOfSeasons: json['number_of_seasons'] as int?,
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

Map<String, dynamic> _$$_TvDetailsToJson(_$_TvDetails instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'name': instance.name,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
      'status': instance.status,
      'tagline': instance.tagline,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'number_of_seasons': instance.numberOfSeasons,
      'videos': instance.videos,
      'credits': instance.credits,
      'watch/providers': instance.watchProviders,
    };

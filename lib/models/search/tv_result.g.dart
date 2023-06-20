// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TvResult _$$_TvResultFromJson(Map<String, dynamic> json) => _$_TvResult(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String?,
      originalName: json['original_name'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      name: json['name'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: json['vote_count'] as int?,
    );

Map<String, dynamic> _$$_TvResultToJson(_$_TvResult instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_name': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'first_air_date': instance.firstAirDate,
      'name': instance.name,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

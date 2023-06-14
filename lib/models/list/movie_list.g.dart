// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieList _$$_MovieListFromJson(Map<String, dynamic> json) => _$_MovieList(
      movies: (json['movies'] as List<dynamic>?)
              ?.map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieResult>[],
      isLoading: json['isLoading'] as bool? ?? false,
      hasError: json['hasError'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MovieListToJson(_$_MovieList instance) =>
    <String, dynamic>{
      'movies': instance.movies,
      'isLoading': instance.isLoading,
      'hasError': instance.hasError,
    };

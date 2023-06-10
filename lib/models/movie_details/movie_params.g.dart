// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieParams _$$_MovieParamsFromJson(Map<String, dynamic> json) =>
    _$_MovieParams(
      movieID: json['movie_i_d'] as int,
      appendToResponse: json['append_to_response'] as String?,
      language: json['language'] as String? ?? 'en-US',
    );

Map<String, dynamic> _$$_MovieParamsToJson(_$_MovieParams instance) =>
    <String, dynamic>{
      'movie_i_d': instance.movieID,
      'append_to_response': instance.appendToResponse,
      'language': instance.language,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DefaultResponse _$$_DefaultResponseFromJson(Map<String, dynamic> json) =>
    _$_DefaultResponse(
      dates: json['dates'] == null
          ? null
          : DateResponse.fromJson(json['dates'] as Map<String, dynamic>),
      page: json['page'] as int? ?? 1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieResult>[],
      totalPages: json['total_pages'] as int? ?? 1,
      totalResults: json['total_results'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DefaultResponseToJson(_$_DefaultResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$_DateResponse _$$_DateResponseFromJson(Map<String, dynamic> json) =>
    _$_DateResponse(
      maximum: json['maximum'] as String,
      minimum: json['minimum'] as String,
    );

Map<String, dynamic> _$$_DateResponseToJson(_$_DateResponse instance) =>
    <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };

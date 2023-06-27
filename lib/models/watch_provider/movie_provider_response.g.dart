// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_provider_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieProviderResponse _$$_MovieProviderResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MovieProviderResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => MovieWatchProvider.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieProviderResponseToJson(
        _$_MovieProviderResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_MovieWatchProvider _$$_MovieWatchProviderFromJson(
        Map<String, dynamic> json) =>
    _$_MovieWatchProvider(
      providerId: json['provider_id'] as int,
      providerName: json['provider_name'] as String,
      logoPath: json['logo_path'] as String,
      displayPriority: json['display_priority'] as int,
      displayPriorities:
          (json['display_priorities'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Map<String, dynamic> _$$_MovieWatchProviderToJson(
        _$_MovieWatchProvider instance) =>
    <String, dynamic>{
      'provider_id': instance.providerId,
      'provider_name': instance.providerName,
      'logo_path': instance.logoPath,
      'display_priority': instance.displayPriority,
      'display_priorities': instance.displayPriorities,
    };

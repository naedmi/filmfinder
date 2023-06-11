import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieDetails({
    required bool? adult,
    required String? backdropPath,
    required int? budget,
    required List<Genre>? genres,
    required String? homepage,
    required int id,
    required String? originalLanguage,
    required String title,
    required String overview,
    required double? popularity,
    required String? posterPath,
    required String? releaseDate,
    required int? revenue,
    required int? runtime,
    required String? status,
    required String? tagline,
    required double? voteAverage,
    required int? voteCount,
    Videos? videos,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'watch/providers') WatchProviders? watchProviders,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}

@freezed
class Genre with _$Genre {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Genre({
    required int id,
    required String name,
  }) = _Genre;

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}

@freezed
class Videos with _$Videos {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Videos({
    required List<VideoResult>? results,
  }) = _Videos;

  factory Videos.fromJson(Map<String, dynamic> json) => _$VideosFromJson(json);
}

@freezed
class VideoResult with _$VideoResult {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VideoResult({
    required String? iso6391,
    required String? iso31661,
    required String? name,
    required String? key,
    required String? site,
    required int? size,
    required String? type,
    required bool? official,
    required String? publishedAt,
    required String? id,
  }) = _VideoResult;

  factory VideoResult.fromJson(Map<String, dynamic> json) =>
      _$VideoResultFromJson(json);
}

@freezed
class WatchProviders with _$WatchProviders {
  const factory WatchProviders({
    required Map<String, WatchProviderResult>? results,
  }) = _WatchProviders;

  factory WatchProviders.fromJson(Map<String, dynamic> json) =>
      _$WatchProvidersFromJson(json);
}

@freezed
class WatchProviderResult with _$WatchProviderResult {
  const factory WatchProviderResult({
    required String? link,
    required List<WatchProvider>? flatrate,
    required List<WatchProvider>? rent,
    required List<WatchProvider>? buy,
    required List<WatchProvider>? ads,
  }) = _WatchProviderResult;

  factory WatchProviderResult.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderResultFromJson(json);
}

@freezed
class WatchProvider with _$WatchProvider {
  const factory WatchProvider({
    @JsonKey(name: 'logo_path')
    required String? logoPath,
    @JsonKey(name: 'provider_id')
    required int? providerId,
    @JsonKey(name: 'provider_name')
    required String? providerName,
    @JsonKey(name: 'display_priority')
    required int? displayPriority,
  }) = _WatchProvider;

  factory WatchProvider.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderFromJson(json);
}

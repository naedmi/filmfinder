import 'package:filmfinder/models/watch_provider/movie_provider_response.dart';
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
    Credits? credits,
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
    required List<MovieWatchProvider>? flatrate,
    required List<MovieWatchProvider>? rent,
    required List<MovieWatchProvider>? buy,
    required List<MovieWatchProvider>? ads,
  }) = _WatchProviderResult;

  factory WatchProviderResult.fromJson(Map<String, dynamic> json) =>
      _$WatchProviderResultFromJson(json);
}

@freezed
class Credits with _$Credits {
  const factory Credits({
    required List<Cast>? cast,
  }) = _Credits;

  factory Credits.fromJson(Map<String, dynamic> json) =>
      _$CreditsFromJson(json);
}

@freezed
class Cast with _$Cast {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Cast({
    required int? id,
    required String? name,
    required String? character,
    required String? profilePath,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

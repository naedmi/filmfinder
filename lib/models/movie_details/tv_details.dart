import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_details.freezed.dart';
part 'tv_details.g.dart';

@freezed
class TvDetails with _$TvDetails {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvDetails({
    required bool? adult,
    required String? backdropPath,
    required List<Genre>? genres,
    required String? homepage,
    required int id,
    required String? originalLanguage,
    required String name,
    required String overview,
    required double? popularity,
    required String? posterPath,
    required String? firstAirDate,
    required String? status,
    required String? tagline,
    required double? voteAverage,
    required int? voteCount,
    required int? numberOfSeasons,
    Videos? videos,
    Credits? credits,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'watch/providers') WatchProviders? watchProviders,
  }) = _TvDetails;

  factory TvDetails.fromJson(Map<String, dynamic> json) =>
      _$TvDetailsFromJson(json);

// ignore: unused_element
  const TvDetails._();

  MovieDetails toMovieDetails() {
    return MovieDetails(
      adult: adult,
      backdropPath: backdropPath,
      id: id,
      originalLanguage: originalLanguage,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: firstAirDate,
      title: name,
      voteAverage: voteAverage,
      voteCount: voteCount,
      genres: genres,
      homepage: homepage,
      runtime: numberOfSeasons,
      status: status,
      tagline: tagline,
      credits: credits,
      videos: videos,
      watchProviders: watchProviders,
      budget: null,
      revenue: null,
    );
  }
}

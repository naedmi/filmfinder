import 'package:filmfinder/models/common/movie_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv_result.freezed.dart';
part 'tv_result.g.dart';

@freezed
class TvResult with _$TvResult {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TvResult({
    required bool? adult,
    required String? backdropPath,
    required List<int>? genreIds,
    required int id,
    required String? originalLanguage,
    required String? originalName,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required String? firstAirDate,
    required String? name,
    required double? voteAverage,
    required int? voteCount,
  }) = _TvResult;

  factory TvResult.fromJson(Map<String, dynamic> json) =>
      _$TvResultFromJson(json);

  // ignore: unused_element
  const TvResult._();

  MovieResult toMovieResult() {
    return MovieResult(
      adult: adult,
      backdropPath: backdropPath,
      genreIds: genreIds,
      id: id,
      originalLanguage: originalLanguage,
      originalTitle: originalName,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: firstAirDate,
      title: name,
      video: false,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}

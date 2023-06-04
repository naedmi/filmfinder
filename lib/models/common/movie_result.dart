import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_result.freezed.dart';
part 'movie_result.g.dart';

@freezed
class MovieResult with _$MovieResult {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieResult({
    required bool? adult,
    required String? backdropPath,
    required List<int>? genreIds,
    required int id,
    required String? originalLanguage,
    required String? originalTitle,
    required String? overview,
    required double? popularity,
    required String? posterPath,
    required String? releaseDate,
    required String? title,
    required bool? video,
    required double? voteAverage,
    required int? voteCount,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}

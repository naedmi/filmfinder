import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

// TODO: Find smart way to implement tv/person/movie responses in one class
@freezed
class SearchResponse with _$SearchResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchResponse({
    @Default(1) int page,
    @Default(<SearchResult>[]) List<SearchResult> results,
    @Default(1) int totalPages,
    @Default(0) int totalResults,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

@freezed
class SearchResult with _$SearchResult {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SearchResult({
    required bool? adult,
    required String? backdropPath,
    required List<int>? genreIds,
    required int? id,
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
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

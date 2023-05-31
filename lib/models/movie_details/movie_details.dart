import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';

part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieDetails({
    required int id,
    required String title,
    required String overview,
    required String? posterPath,
    required double? voteAverage,
    required int? voteCount,
    // Add more properties as needed
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}

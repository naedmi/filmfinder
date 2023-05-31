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
    // TODO: Add more details, depending what we want
    //required List<String>? genres,
    //required String? releaseDate,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}

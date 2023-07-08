import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'movie_result.freezed.dart';
part 'movie_result.g.dart';

@freezed
class MovieResult with _$MovieResult {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  @HiveType(typeId: 0, adapterName: 'MovieAdapter')
  const factory MovieResult({
    @HiveField(0) required bool? adult,
    @HiveField(1) required String? backdropPath,
    @HiveField(2) required List<int>? genreIds,
    @HiveField(3) required int id,
    @HiveField(4) required String? originalLanguage,
    @HiveField(5) required String? originalTitle,
    @HiveField(6) required String? overview,
    @HiveField(7) required double? popularity,
    @HiveField(8) required String? posterPath,
    @HiveField(9) required String? releaseDate,
    @HiveField(10) required String? title,
    @HiveField(11) required bool? video,
    @HiveField(12) required double? voteAverage,
    @HiveField(13) required int? voteCount,
  }) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}

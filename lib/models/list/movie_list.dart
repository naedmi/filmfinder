import 'package:filmfinder/models/common/movie_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_list.freezed.dart';
part 'movie_list.g.dart';

@freezed
class MovieList with _$MovieList {
  const factory MovieList({
    @Default(<MovieResult>[]) List<MovieResult> movies,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) =>
      _$MovieListFromJson(json);
}

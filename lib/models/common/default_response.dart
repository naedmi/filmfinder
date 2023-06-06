import 'package:filmfinder/models/common/movie_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_response.freezed.dart';
part 'default_response.g.dart';

@freezed
class DefaultResponse with _$DefaultResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DefaultResponse({
    DateResponse? dates,
    @Default(1) int page,
    @Default(<MovieResult>[]) List<MovieResult> results,
    @Default(1) int totalPages,
    @Default(0) int totalResults,
  }) = _DefaultResponse;

  factory DefaultResponse.fromJson(Map<String, dynamic> json) =>
      _$DefaultResponseFromJson(json);
}

@freezed
class DateResponse with _$DateResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DateResponse({
    required String maximum,
    required String minimum,
  }) = _DateResponse;

  factory DateResponse.fromJson(Map<String, dynamic> json) =>
      _$DateResponseFromJson(json);
}

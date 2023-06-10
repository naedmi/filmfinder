import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_params.freezed.dart';
part 'movie_params.g.dart';

@freezed
class MovieParams with _$MovieParams {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieParams({
    required int movieID,
    String? appendToResponse,
    @Default('en-US') String language,
  }) = _MovieParams;

  factory MovieParams.fromJson(Map<String, dynamic> json) =>
      _$MovieParamsFromJson(json);

  // ignore: unused_element
  const MovieParams._();

  @override
  String toString() {
    return '$movieID?language=$language${appendToResponse != null ? '&append_to_response=$appendToResponse' : ''}';
  }
}

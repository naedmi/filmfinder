import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_provider_response.freezed.dart';
part 'movie_provider_response.g.dart';

@freezed
class MovieProviderResponse with _$MovieProviderResponse {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieProviderResponse({
    required List<MovieWatchProvider> results,
  }) = _MovieProviderResponse;

  factory MovieProviderResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieProviderResponseFromJson(json);
}

@freezed
class MovieWatchProvider with _$MovieWatchProvider {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieWatchProvider(
      {required int providerId,
      required String providerName,
      required String logoPath,
      required int displayPriority,
      required Map<String, int>? displayPriorities}) = _MovieWatchProvider;

  factory MovieWatchProvider.fromJson(Map<String, dynamic> json) =>
      _$MovieWatchProviderFromJson(json);
}

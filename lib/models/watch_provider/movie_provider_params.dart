import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_provider_params.freezed.dart';

@freezed
class MovieProviderParams with _$MovieProviderParams {
  const factory MovieProviderParams({
    required String language,
    required String watchRegion,
  }) = _MovieProviderParams;

  const MovieProviderParams._();

  @override
  String toString() {
    return '?language=$language&watch_region=$watchRegion';
  }
}

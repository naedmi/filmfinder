import 'package:filmfinder/models/landing/api_categories.dart';
import 'package:filmfinder/models/landing/api_trending.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'landing_params.freezed.dart';

@freezed
class LandingTrendingParams with _$LandingTrendingParams {
  const factory LandingTrendingParams({
    required AvailableTrendingType trendingType,
    @Default(1) int page,
    required String language,
    String? region,
  }) = _LandingTrendingParams;

  // ignore: unused_element
  const LandingTrendingParams._();

  @override
  String toString() {
    return '${trendingType.name}?page=$page&language=$language${region != null ? '&region=region' : ''}';
  }
}

@freezed
class LandingCategoryParams with _$LandingCategoryParams {
  const factory LandingCategoryParams({
    required AvailableLandingCategory category,
    @Default(1) int page,
    required String language,
    String? region,
  }) = _LandingCategoryParams;

  // ignore: unused_element
  const LandingCategoryParams._();

  @override
  String toString() {
    return '${category.name}?page=$page&language=$language${region != null ? '&region=region' : ''}';
  }
}

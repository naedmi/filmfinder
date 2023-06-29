import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/landing/api_categories.dart';
import 'package:filmfinder/models/landing/api_trending.dart';
import 'package:filmfinder/models/landing/landing_category.dart';
import 'package:filmfinder/services/landing/category_api_service.dart';
import 'package:filmfinder/services/landing/trending_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LandingController
    extends AutoDisposeNotifier<List<Future<LandingCategory>>> {
  void refresh();
}

class LandingControllerImpl extends LandingController {
  @override
  void refresh() {
    for (AvailableLandingCategory category in AvailableLandingCategory.values) {
      ref.invalidate(categoryApiService(category));
    }
    for (AvailableTrendingType trendingType in AvailableTrendingType.values) {
      ref.invalidate(trendingApiService(trendingType));
    }
  }

  @override
  List<Future<LandingCategory>> build() {
    List<Future<LandingCategory>> landingCategories =
        <Future<LandingCategory>>[];
    for (AvailableLandingCategory category in AvailableLandingCategory.values) {
      landingCategories.add(ref.watch(categoryApiService(category).selectAsync(
          (DefaultResponse data) => LandingCategory(
              title: category.value,
              posters: data.results
                  .map((MovieResult m) => ClickablePoster(
                      movieId: m.id, posterPath: m.posterPath ?? ''))
                  .toList()))));
    }
    for (AvailableTrendingType trendingType in AvailableTrendingType.values) {
      landingCategories.add(ref.watch(trendingApiService(trendingType)
          .selectAsync((DefaultResponse data) => LandingCategory(
              title: trendingType.value,
              posters: data.results
                  .map((MovieResult m) => ClickablePoster(
                      movieId: m.id, posterPath: m.posterPath ?? ''))
                  .toList()))));
    }
    return landingCategories;
  }
}

import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/landing/api_categories.dart';
import 'package:filmfinder/models/landing/landing_category.dart';
import 'package:filmfinder/services/landing/category_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class LandingController {
  final AutoDisposeStateProviderRef<LandingController> ref;

  LandingController(this.ref);

  late List<Future<LandingCategory>> landingCategories =
      <Future<LandingCategory>>[];

  void refresh();
}

class LandingControllerImpl extends LandingController {
  LandingControllerImpl(AutoDisposeStateProviderRef<LandingController> ref)
      : super(ref) {
    for (AvailableLandingCategory category in AvailableLandingCategory.values) {
      landingCategories.add(ref.watch(categoryApiService(category).selectAsync(
          (DefaultResponse data) => LandingCategory(
              title: categoryNameMap[category] ?? '',
              posters: data.results
                  .map((MovieResult m) => ClickablePoster(
                      movieId: m.id, posterPath: m.posterPath ?? ''))
                  .toList()))));
    }
  }

  @override
  void refresh() {
    for (AvailableLandingCategory category in AvailableLandingCategory.values) {
      ref.invalidate(categoryApiService(category));
    }
  }
}

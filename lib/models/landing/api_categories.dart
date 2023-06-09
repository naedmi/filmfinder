import 'package:easy_localization/easy_localization.dart';

enum AvailableLandingCategory {
  popular,
  // ignore: constant_identifier_names
  top_rated,
  // ignore: constant_identifier_names
  now_playing,
  upcoming,
}

final Map<AvailableLandingCategory, String> categoryNameMap =
    <AvailableLandingCategory, String>{
  AvailableLandingCategory.now_playing: 'landing_cat_now_playing'.tr(),
  AvailableLandingCategory.popular: 'landing_cat_popular'.tr(),
  AvailableLandingCategory.top_rated: 'landing_cat_top_rated'.tr(),
  AvailableLandingCategory.upcoming: 'landing_cat_upcoming'.tr(),
};

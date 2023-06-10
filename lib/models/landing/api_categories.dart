

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
  AvailableLandingCategory.now_playing: 'landing.category.now_playing',
  AvailableLandingCategory.popular: 'landing.category.popular',
  AvailableLandingCategory.top_rated: 'landing.category.top_rated',
  AvailableLandingCategory.upcoming: 'landing.category.upcoming',
};

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
  AvailableLandingCategory.now_playing: 'Now Playing',
  AvailableLandingCategory.popular: 'Popular',
  AvailableLandingCategory.top_rated: 'Top Rated',
  AvailableLandingCategory.upcoming: 'Upcoming',
};

enum AvailableLandingCategory {
  // ignore: constant_identifier_names
  now_playing,
  popular,
  // ignore: constant_identifier_names
  top_rated,
  upcoming,
}

final Map<AvailableLandingCategory, String> categoryNameMap = <AvailableLandingCategory, String>{
  AvailableLandingCategory.now_playing: 'Now Playing',
  AvailableLandingCategory.popular: 'Popular',
  AvailableLandingCategory.top_rated: 'Top Rated',
  AvailableLandingCategory.upcoming: 'Upcoming',
};

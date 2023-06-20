enum AvailableTrendingType {
  day,
  week,
}

extension AvailableTrendingTypesExtension on AvailableTrendingType {
  String get value {
    final Map<AvailableTrendingType, String> trendingNameMap =
        <AvailableTrendingType, String>{
      AvailableTrendingType.day: 'landing.category.trending.day',
      AvailableTrendingType.week: 'landing.category.trending.week',
    };
    return trendingNameMap[this]!;
  }
}

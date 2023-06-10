import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_params.freezed.dart';

@freezed
class DiscoverParams with _$DiscoverParams {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DiscoverParams(
      {String? certification,
      String? certificationGte,
      String? certificationLte,
      String? certificationCountry,
      @Default(false) bool includeAdult,
      @Default(false) bool includeVideo,
      @Default('en-US') String language,
      @Default(1) int page,
      int? primaryReleaseYear,
      DateTime? primaryReleaseDateGte,
      DateTime? primaryReleaseDateLte,
      @Default(DiscoverSortBy.popularityDesc) DiscoverSortBy sortBy,
      double? voteAverageGte,
      double? voteAverageLte,
      double? voteCountGte,
      double? voteCountLte,
      String? watchRegion,
      String? withCast,
      String? withCompanies,
      String? withCrew,
      String? withGenres,
      String? withKeywords,
      String? withOriginCountry,
      String? withOriginalLanguage,
      String? withPeople,
      int? withReleaseType,
      int? withRuntimeGte,
      int? withRuntimeLte,
      String? withWatchMonetizationTypes,
      String? withWatchProviders,
      String? withoutCompanies,
      String? withoutGenres,
      String? withoutKeywords,
      String? withoutWatchProviders,
      int? year}) = _DiscoverParams;

  // ignore: unused_element
  const DiscoverParams._();

  @override
  String toString() {
    return '${certification != null ? 'certification=$certification&' : ''}'
        '${certificationGte != null ? 'certification.gte=$certificationGte&' : ''}'
        '${certificationLte != null ? 'certification.lte=$certificationLte&' : ''}'
        '${certificationCountry != null ? 'certification_country=$certificationCountry&' : ''}'
        'include_adult=$includeAdult&'
        'include_video=$includeVideo&'
        'language=$language&'
        'page=$page&'
        '${primaryReleaseYear != null ? 'primary_release_year=$primaryReleaseYear&' : ''}'
        '${primaryReleaseDateGte != null ? 'primary_release_date.gte=$primaryReleaseDateGte&' : ''}'
        '${primaryReleaseDateLte != null ? 'primary_release_date.lte=$primaryReleaseDateLte&' : ''}'
        'sort_by=${discoverSortByValues[sortBy]}&'
        '${voteAverageGte != null ? 'vote_average.gte=$voteAverageGte&' : ''}'
        '${voteAverageLte != null ? 'vote_average.lte=$voteAverageLte&' : ''}'
        '${voteCountGte != null ? 'vote_count.gte=$voteCountGte&' : ''}'
        '${voteCountLte != null ? 'vote_count.lte=$voteCountLte&' : ''}'
        '${watchRegion != null ? 'watch_region=$watchRegion&' : ''}'
        '${withCast != null ? 'with_cast=$withCast&' : ''}'
        '${withCompanies != null ? 'with_companies=$withCompanies&' : ''}'
        '${withCrew != null ? 'with_crew=$withCrew&' : ''}'
        '${withGenres != null ? 'with_genres=$withGenres&' : ''}'
        '${withKeywords != null ? 'with_keywords=$withKeywords&' : ''}'
        '${withOriginCountry != null ? 'with_origin_country=$withOriginCountry&' : ''}'
        '${withOriginalLanguage != null ? 'with_original_language=$withOriginalLanguage&' : ''}'
        '${withPeople != null ? 'with_people=$withPeople&' : ''}'
        '${withReleaseType != null ? 'with_release_type=$withReleaseType&' : ''}'
        '${withRuntimeGte != null ? 'with_runtime.gte=$withRuntimeGte&' : ''}'
        '${withRuntimeLte != null ? 'with_runtime.lte=$withRuntimeLte&' : ''}'
        '${withWatchMonetizationTypes != null ? 'with_watch_monetization_types=$withWatchMonetizationTypes&' : ''}'
        '${withWatchProviders != null ? 'with_watch_providers=$withWatchProviders&' : ''}'
        '${withoutCompanies != null ? 'without_companies=$withoutCompanies&' : ''}'
        '${withoutGenres != null ? 'without_genres=$withoutGenres&' : ''}'
        '${withoutKeywords != null ? 'without_keywords=$withoutKeywords&' : ''}'
        '${withoutWatchProviders != null ? 'without_watch_providers=$withoutWatchProviders&' : ''}'
        '${year != null ? 'year=$year' : ''}';
  }
}

enum DiscoverSortBy {
  popularityAsc,
  popularityDesc,
  revenueAsc,
  revenueDesc,
  primaryReleaseDateAsc,
  primaryReleaseDateDesc,
  originalTitleAsc,
  originalTitleDesc,
  voteAverageAsc,
  voteAverageDesc,
  voteCountAsc,
  voteCountDesc,
}

final Map<DiscoverSortBy, String> discoverSortByValues =
    <DiscoverSortBy, String>{
  DiscoverSortBy.popularityAsc: 'popularity.asc',
  DiscoverSortBy.popularityDesc: 'popularity.desc',
  DiscoverSortBy.revenueAsc: 'revenue.asc',
  DiscoverSortBy.revenueDesc: 'revenue.desc',
  DiscoverSortBy.primaryReleaseDateAsc: 'primary_release_date.asc',
  DiscoverSortBy.primaryReleaseDateDesc: 'primary_release_date.desc',
  DiscoverSortBy.originalTitleAsc: 'original_title.asc',
  DiscoverSortBy.originalTitleDesc: 'original_title.desc',
  DiscoverSortBy.voteAverageAsc: 'vote_average.asc',
  DiscoverSortBy.voteAverageDesc: 'vote_average.desc',
  DiscoverSortBy.voteCountAsc: 'vote_count.asc',
  DiscoverSortBy.voteCountDesc: 'vote_count.desc',
};

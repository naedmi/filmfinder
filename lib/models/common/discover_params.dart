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

  @override
  String toString() {
    return 'certification=${certification ?? ''}&'
        'certification.gte=${certificationGte ?? ''}&'
        'certification.lte=${certificationLte ?? ''}&'
        'certification_country=${certificationCountry ?? ''}&'
        'include_adult=$includeAdult&'
        'include_video=$includeVideo&'
        'language=$language&'
        'page=$page&'
        'primary_release_year=${primaryReleaseYear ?? ''}&'
        'primary_release_date.gte=${primaryReleaseDateGte?.toIso8601String() ?? ''}&'
        'primary_release_date.lte=${primaryReleaseDateLte?.toIso8601String() ?? ''}&'
        'sort_by=${discoverSortByValues[sortBy]}&'
        'vote_average.gte=${voteAverageGte ?? ''}&'
        'vote_average.lte=${voteAverageLte ?? ''}&'
        'vote_count.gte=${voteCountGte ?? ''}&'
        'vote_count.lte=${voteCountLte ?? ''}&'
        'watch_region=${watchRegion ?? ''}&'
        'with_cast=${withCast ?? ''}&'
        'with_companies=${withCompanies ?? ''}&'
        'with_crew=${withCrew ?? ''}&'
        'with_genres=${withGenres ?? ''}&'
        'with_keywords=${withKeywords ?? ''}&'
        'with_origin_country=${withOriginCountry ?? ''}&'
        'with_original_language=${withOriginalLanguage ?? ''}&'
        'with_people=${withPeople ?? ''}&'
        'with_release_type=${withReleaseType ?? ''}&'
        'with_runtime.gte=${withRuntimeGte ?? ''}&'
        'with_runtime.lte=${withRuntimeLte ?? ''}&'
        'with_watch_monetization_types=${withWatchMonetizationTypes ?? ''}&'
        'with_watch_providers=${withWatchProviders ?? ''}&'
        'without_companies=${withoutCompanies ?? ''}&'
        'without_genres=${withoutGenres ?? ''}&'
        'without_keywords=${withoutKeywords ?? ''}&'
        'without_watch_providers=${withoutWatchProviders ?? ''}&'
        'year=${year ?? ''}';
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

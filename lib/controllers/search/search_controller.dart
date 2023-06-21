import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/search/search_filter.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/services/search/search_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SearchController
    extends AutoDisposeNotifier<AsyncValue<DefaultResponse>> {
  late SearchFilter filter;

  void updateFilters(SearchFilter filter);

  void setQuery(String query);

  void setLanguage(String language);

  void setPage(int page);

  void setType(String type);

  void setYear(int? year);
}

class SearchControllerImpl extends SearchController {
  @override
  void updateFilters(SearchFilter filter) {
    ref.read(providers.searchFilterProvider.notifier).state = filter;
  }

  @override
  void setQuery(String query) {
    updateFilters(filter.copyWith(query: query, page: 1));
  }

  @override
  void setLanguage(String language) {
    updateFilters(filter.copyWith(language: language));
  }

  @override
  void setPage(int page) {
    updateFilters(filter.copyWith(page: page));
  }

  @override
  void setType(String type) {
    updateFilters(filter.copyWith(type: type, page: 1));
  }

  @override
  void setYear(int? year) {
    updateFilters(filter.copyWith(year: year, page: 1));
  }

  @override
  AsyncValue<DefaultResponse> build() {
    filter = ref.watch(providers.searchFilterProvider);
    final AsyncValue<DefaultResponse> searchResponse =
        ref.watch(searchApiService(filter));
    return searchResponse;
  }
}

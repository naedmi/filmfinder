import 'package:filmfinder/main.dart';
import 'package:filmfinder/model/search_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
Future<SearchResponse> fetchSearchResult(FetchSearchResultRef ref,
    {required String query}) async {
  if (query.isEmpty) {
    return const SearchResponse(
        results: [], page: 1, totalPages: 1, totalResults: 0);
  }
  Filter filter = ref.watch(filterProvider);

  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/search/${filter.type}?'
        'query=$query'
        '&include_adult=${filter.adult}'
        '&language=${filter.language}'
        '&page=${filter.page}'
        '${filter.year != null ? '&primary_release_year=${filter.year}' : ''}',
      );

  return SearchResponse.fromJson(response.data);
}

@riverpod
class Filter extends _$Filter {
  Filter(
      {this.adult = false,
      this.language = 'en-US',
      this.page = 1,
      this.type = 'movie',
      this.year});

  bool adult;
  String language;
  int page;
  String type;
  int? year;

  @override
  Filter build() {
    return Filter(
      adult: adult,
      language: language,
      page: page,
      type: type,
      year: year,
    );
  }

  void setAdult(bool value) {
    state = Filter(
      adult: value,
      language: state.language,
      page: state.page,
      type: state.type,
      year: state.year,
    );
  }

  void setLanguage(String value) {
    state = Filter(
      adult: state.adult,
      language: value,
      page: state.page,
      type: state.type,
      year: state.year,
    );
  }

  void setPage(int value) {
    state = Filter(
      adult: state.adult,
      language: state.language,
      page: value,
      type: state.type,
      year: state.year,
    );
  }

  void setType(String value) {
    state = Filter(
      adult: state.adult,
      language: state.language,
      page: state.page,
      type: value,
      year: state.year,
    );
  }

  void setYear(int? value) {
    state = Filter(
      adult: state.adult,
      language: state.language,
      page: state.page,
      type: state.type,
      year: value,
    );
  }
}

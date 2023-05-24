import 'package:filmfinder/main.dart';
import 'package:filmfinder/model/search_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
Future<SearchResponse> fetchSearchResult(FetchSearchResultRef ref,
    {required String query,
    String type = 'movie',
    bool adult = false,
    String language = 'en-US',
    int page = 1}) async {
  if (query.isEmpty) {
    return const SearchResponse(
        results: [], page: 1, totalPages: 1, totalResults: 0);
  }

  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/search/$type?query=$query&include_adult=$adult&language=$language&page=$page',
      );

  return SearchResponse.fromJson(response.data);
}

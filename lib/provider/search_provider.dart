import 'package:filmfinder/main.dart';
import 'package:filmfinder/model/search_response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_provider.g.dart';

@riverpod
Future<SearchResponse> fetchSearchResult(
    FetchSearchResultRef ref, String search) async {
  if (search.isEmpty) return const SearchResponse(results: [], page: 0);

  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/search/movie?query=$search&include_adult=false&language=en-US&page=1',
      );

  return SearchResponse.fromJson(response.data);
}

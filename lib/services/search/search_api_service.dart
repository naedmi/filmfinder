import 'package:filmfinder/models/search/search_filter.dart';
import 'package:filmfinder/models/search/search_response.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api_service.dart';

final searchApiService =
    FutureProvider.autoDispose.family((ref, SearchFilter filter) async {
  if (filter.query.isEmpty) {
    return const SearchResponse();
  }

  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/search/${filter.type}?'
        'query=${filter.query}'
        '&include_adult=${filter.adult}'
        '&language=${filter.language}'
        '&page=${filter.page}'
        '${filter.year != null ? '&primary_release_year=${filter.year}' : ''}',
      );
  ref.keepAlive();

  return SearchResponse.fromJson(response.data);
});

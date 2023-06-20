import 'package:dio/dio.dart';
import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/search/api_search_types.dart';
import 'package:filmfinder/models/search/search_filter.dart';
import 'package:filmfinder/models/search/tv_result.dart';
import 'package:filmfinder/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<DefaultResponse, SearchFilter>
    searchApiService = FutureProvider.autoDispose.family(searchApiServiceImpl);

Future<DefaultResponse> searchApiServiceImpl(
    AutoDisposeFutureProviderRef<DefaultResponse> ref,
    SearchFilter filter) async {
  if (filter.query.isEmpty) {
    return const DefaultResponse();
  }

  Response<dynamic> response = await ref.watch(providers.dioProvider).get(
        'https://api.themoviedb.org/3/search/${filter.type}?'
        'query=${filter.query}'
        '&language=${filter.language}'
        '&page=${filter.page}'
        '${filter.year != null ? '&primary_release_year=${filter.year}' : ''}',
      );
  ref.keepAlive();

  if (filter.type == SearchType.tv.name) {
    List<MovieResult> tvResults = <MovieResult>[];
    for (Map<String, dynamic> entry
        in List<Map<String, dynamic>>.from(response.data['results'])) {
      tvResults.add(TvResult.fromJson(entry).toMovieResult());
    }
    response.data['results'] = tvResults
        .map((MovieResult movieResult) => movieResult.toJson())
        .toList();
  }

  return DefaultResponse.fromJson(response.data);
}

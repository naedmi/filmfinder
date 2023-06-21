import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/search/search_filter.dart';
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

  dynamic response = await ref.watch(providers.dioProvider).get(
        'https://api.themoviedb.org/3/search/${filter.type}?'
        'query=${filter.query}'
        '&language=${filter.language}'
        '&page=${filter.page}'
        '${filter.year != null ? '&primary_release_year=${filter.year}' : ''}',
      );
  ref.keepAlive();

  return DefaultResponse.fromJson(response.data);
}

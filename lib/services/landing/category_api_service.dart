import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/landing/api_categories.dart';
import 'package:filmfinder/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<DefaultResponse, AvailableLandingCategory>
    categoryApiService =
    FutureProvider.autoDispose.family(categoryApiServiceImpl);

Future<DefaultResponse> categoryApiServiceImpl(
    AutoDisposeFutureProviderRef<DefaultResponse> ref,
    AvailableLandingCategory category) async {
  dynamic response = await ref.watch(providers.dioProvider).get(
        'https://api.themoviedb.org/3/movie/${category.name}',
      );
  ref.keepAlive();

  return DefaultResponse.fromJson(response.data);
}

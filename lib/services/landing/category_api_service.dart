import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/landing/landing_params.dart';
import 'package:filmfinder/services/common/dio_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeFutureProviderFamily<DefaultResponse, LandingCategoryParams>
    categoryApiService =
    FutureProvider.autoDispose.family(categoryApiServiceImpl);

Future<DefaultResponse> categoryApiServiceImpl(
    AutoDisposeFutureProviderRef<DefaultResponse> ref,
    LandingCategoryParams params) async {
  dynamic response = await ref.watch(dioProvider).get(
        'https://api.themoviedb.org/3/movie/$params',
      );
  ref.keepAlive();

  return DefaultResponse.fromJson(response.data);
}

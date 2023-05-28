import 'package:filmfinder/controllers/search/search_controller.dart';
import 'package:filmfinder/models/search/search_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProvider<SearchController> searchControllerProvider =
    StateProvider.autoDispose<SearchController>((AutoDisposeStateProviderRef<SearchController> ref) {
  return SearchControllerImpl(ref);
});

final StateProvider<SearchFilter> searchFilterProvider =
    StateProvider<SearchFilter>((Ref ref) {
  return const SearchFilter();
});

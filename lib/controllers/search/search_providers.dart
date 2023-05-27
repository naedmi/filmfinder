import 'package:filmfinder/controllers/search/search_controller.dart';
import 'package:filmfinder/models/search/search_filter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<SearchController> searchControllerProvider =
    StateProvider<SearchController>((ref) {
  return SearchControllerImpl(ref);
});

final searchFilterProvider = StateProvider<SearchFilter>((ref) {
  return const SearchFilter();
});

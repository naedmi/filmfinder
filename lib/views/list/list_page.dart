import 'package:filmfinder/controllers/list/list_controller.dart'
    as list_controller;
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/list/movie_list.dart';
import '../search/search_result_widget.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list_controller.ListController listController =
        ref.watch(providers.listControllerProvider);
    final MovieList movieList = ref.watch(providers.movieListProvider);

    return MainBottomBarScaffold(
      appBar: AppBar(
        title: const Center(child: Text('My List')),
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
            left: padding, right: padding, bottom: paddingBig * 2),
        itemBuilder: (BuildContext context, int index) =>
            movieList.movies.isEmpty
                ? const Center(child: Text('No movies added to list'))
                : SearchResultWidget(res: movieList.movies[index]),
        itemCount: listController.getAllMovies().length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

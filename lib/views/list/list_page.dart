import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/list/list_controller.dart'
    as list_controller;
import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/models/list/movie_list.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/common/result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list_controller.ListController listController =
        ref.read(providers.listControllerProvider.notifier);
    final MovieList movieList = ref.watch(providers.listControllerProvider);

    return MainBottomBarScaffold(
      appBar: AppBar(
        title: Center(child: Text('list.header'.tr())),
        automaticallyImplyLeading: false,
      ),
      body: movieList.movies.isEmpty
          ? Align(
              alignment: Alignment.topCenter,
              child: Card(
                child: SizedBox(
                  height: paddingBig * 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Remix.emotion_sad_line,
                          size: paddingBig + padding),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: paddingBig,
                              right: paddingBig,
                              top: padding),
                          child: Text('list.empty'.tr())),
                    ],
                  ),
                ),
              ),
            )
          : ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                  left: padding,
                  right: padding,
                  bottom: paddingBig * 2 + padding * 2),
              itemBuilder: (BuildContext context, int index) =>
                  ResultWidget(res: movieList.movies[index]),
              itemCount: listController.getAllMovies().length,
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
    );
  }
}

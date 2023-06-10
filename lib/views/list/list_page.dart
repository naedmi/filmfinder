import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/navigation_widget.dart';
import 'package:filmfinder/views/list/list_media_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MainBottomBarScaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('list.header').tr(),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
            left: padding, right: padding, bottom: paddingBig * 2),
        itemBuilder: (BuildContext context, int index) => const ListMediaWidget(
            res: MovieResult(
                adult: true,
                backdropPath: null,
                genreIds: null,
                id: 0,
                originalLanguage: null,
                originalTitle: null,
                overview: null,
                popularity: null,
                posterPath: null,
                releaseDate: null,
                title: 'Title',
                video: null,
                voteAverage: null,
                voteCount: null)),
        itemCount: 4,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/list/list_controller.dart'
    as list_controller;
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/providers.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/result_poster_widget.dart';
import 'package:filmfinder/views/common/tooltip_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remixicon/remixicon.dart';

class SearchResultWidget extends ConsumerWidget {
  final MovieResult res;

  const SearchResultWidget({Key? key, required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final list_controller.ListController listController =
        ref.watch(providers.listControllerProvider);

    return Padding(
      padding: const EdgeInsets.all(paddingTiny),
      child:
          Stack(alignment: AlignmentDirectional.centerStart, children: <Widget>[
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(paddingSmall),
                child: SizedBox(
                  height: posterContainerDefaultHeight(context) * 2 / 3,
                  width: posterContainerDefaultHeight(context) * 2 / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Tooltip(
                        message: res.title ?? '',
                        child: Text(
                          res.title ?? res.originalTitle ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Divider(),
                      Wrap(spacing: paddingTiny, children: <Widget>[
                        TooltipRatingWidget(
                          voteAverage: res.voteAverage,
                        ),
                        Text(
                          'common.votes'.tr(
                              args: <String>[res.voteCount?.toString() ?? '-']),
                          style: const TextStyle(fontSize: paddingSmall),
                        ),
                      ]),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          res.releaseDate?.isNotEmpty ?? false
                              ? Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(borderRadiusBig),
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceVariant,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: paddingSmall,
                                      horizontal: paddingSmall + paddingTiny),
                                  child: Text(
                                    DateTime.parse(res.releaseDate!)
                                        .year
                                        .toString(),
                                  ),
                                )
                              : const SizedBox(),
                          const Spacer(),
                          Tooltip(
                            message:
                                listController.movieList.movies.contains(res)
                                    ? 'common.remove'.tr()
                                    : 'common.add'.tr(),
                            child: ElevatedButton(
                              onPressed: () {
                                if (!listController.movieList.movies
                                    .contains(res)) {
                                  listController.addMovie(res);
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                            'list.remove.confirmation'.tr()),
                                        content: Text('list.remove.text'.tr()),
                                        actions: <Widget>[
                                          TextButton(
                                            child:
                                                Text('list.remove.cancel'.tr()),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Close the dialog
                                            },
                                          ),
                                          TextButton(
                                            child: Text(
                                                'list.remove.confirm'.tr()),
                                            onPressed: () {
                                              listController
                                                  .removeMovie(res.id);
                                              Navigator.of(context)
                                                  .pop(); // Close the dialog
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              },
                              child: listController.contains(res.id)
                                  ? const Icon(
                                      Remix.heart_fill,
                                    )
                                  : const Icon(
                                      Remix.heart_line,
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
            height: posterContainerDefaultHeight(context),
            child: ResultPosterWidget(id: res.id, posterPath: res.posterPath)),
      ]),
    );
  }
}

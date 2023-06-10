import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/services/common/poster_service.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class ListMediaWidget extends StatelessWidget {
  final MovieResult res;

  const ListMediaWidget({Key? key, required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  height: MediaQuery.of(context).size.width / 3 +
                      paddingBig -
                      paddingSmall * 2,
                  width: MediaQuery.of(context).size.width / 3 * 2 -
                      paddingBig * 2 -
                      paddingSmall,
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
                        Tooltip(
                          message: '${res.voteAverage.toString()} / 10 stars',
                          child: RatingBarIndicator(
                            itemSize: padding,
                            rating: (res.voteAverage ?? 0) / 2,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Icon(
                                Remix.star_fill,
                                color: Theme.of(context).colorScheme.primary,
                              );
                            },
                          ),
                        ),
                        Text(
                          '${res.voteCount} votes',
                          style: const TextStyle(fontSize: paddingSmall),
                        ),
                      ]),
                      const Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(borderRadiusBig),
                              color:
                                  Theme.of(context).colorScheme.surfaceVariant,
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: paddingSmall,
                                horizontal: paddingSmall + paddingTiny),
                            child: Text(
                              res.releaseDate?.isNotEmpty ?? false
                                  ? DateTime.parse(res.releaseDate!)
                                      .year
                                      .toString()
                                  : '',
                            ),
                          ),
                          const Spacer(),
                          Tooltip(
                            message: 'list.remove.title'.tr(),
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title:
                                          const Text('list.remove.confirmation')
                                              .tr(),
                                      content: Text(
                                              'list.remove.text' '${res.title}')
                                          .tr(),
                                      actions: <Widget>[
                                        TextButton(
                                          child:
                                              const Text('list.remove.cancel')
                                                  .tr(),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                          },
                                        ),
                                        TextButton(
                                          child:
                                              const Text('list.remove.confirm')
                                                  .tr(),
                                          onPressed: () {
                                            // TODO: Remove the movie from the list
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Icon(
                                Remix.heart_fill,
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
        GestureDetector(
          onTap: () {
            context.pushNamed(
              'details',
              pathParameters: <String, String>{'id': res.id.toString()},
            );
          },
          child: Material(
            elevation: elevation,
            borderRadius: BorderRadius.circular(borderRadiusBig),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadiusBig),
              child: CachedNetworkImage(
                imageUrl: posterUrl(path: res.posterPath ?? ''),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width / 3 + paddingSmall,
                height: MediaQuery.of(context).size.width / 3 + paddingBig * 2,
                placeholder: (BuildContext context, String url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (BuildContext context, String url, error) =>
                    const Icon(Remix.image_2_line, size: 100),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

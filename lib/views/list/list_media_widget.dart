import 'package:cached_network_image/cached_network_image.dart';
import 'package:filmfinder/models/search/search_response.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class ListMediaWidget extends StatelessWidget {
  final SearchResult res;

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
                            message: 'Remove from list',
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text('Confirmation'),
                                      content: Text(
                                          'Remove ${res.title} from your list?'),
                                      actions: <Widget>[
                                        TextButton(
                                          child: const Text('Cancel'),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the dialog
                                          },
                                        ),
                                        TextButton(
                                          child: const Text('Remove'),
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
              pathParameters: {'id': res.id.toString()},
            );
          },
          child: Material(
            elevation: elevation,
            borderRadius: BorderRadius.circular(borderRadiusBig),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadiusBig),
              child: CachedNetworkImage(
                imageUrl: poster(path: res.posterPath ?? ''),
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

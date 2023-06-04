import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/result_poster_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remixicon/remixicon.dart';

class SearchResultWidget extends StatelessWidget {
  final MovieResult res;

  const SearchResultWidget({Key? key, required this.res}) : super(key: key);

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
                            message: 'Add to list',
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Icon(
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
        ResultPosterWidget(id: res.id, posterPath: res.posterPath),
      ]),
    );
  }
}

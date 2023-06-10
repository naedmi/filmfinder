import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remixicon/remixicon.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleSwipeWidget extends StatelessWidget {
  final MovieDetails movie;
  final YoutubePlayerFlags ytFlags;

  const SingleSwipeWidget(
      {super.key, required this.movie, required this.ytFlags});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: movie.videos?.results?.first.key ?? '',
      flags: ytFlags,
    );
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const <double>[0.6, 0.9],
          colors: <Color>[
            Colors.black,
            Theme.of(context).colorScheme.background,
          ],
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: MediaQuery.of(context).padding.top),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2 -
                  MediaQuery.of(context).padding.top,
              width: MediaQuery.of(context).size.width,
              child: YoutubePlayer(
                controller: controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Theme.of(context).primaryColor,
                bottomActions: <Widget>[
                  IconButton.outlined(
                      onPressed: () => controller.mute(),
                      color: Colors.white,
                      icon: const Icon(
                        Remix.volume_up_line,
                        color: Colors.white,
                      ))
                ],
                topActions: const <Widget>[],
                progressColors: ProgressBarColors(
                  playedColor: Theme.of(context).primaryColor,
                  handleColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(padding),
                ),
                margin: const EdgeInsets.all(padding),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - padding * 2,
                  height: MediaQuery.of(context).size.height / 3 + padding,
                  child: Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headlineMedium,
                            text: movie.title,
                          ),
                        ),
                        const Divider(),
                        Row(
                          children: <Widget>[
                            Tooltip(
                              message:
                                  '${movie.voteAverage.toString()} / 10 stars',
                              child: RatingBarIndicator(
                                itemSize: padding,
                                rating: (movie.voteAverage ?? 0) / 2,
                                itemCount: 4,
                                itemBuilder: (BuildContext context, int index) {
                                  return Icon(
                                    Remix.star_fill,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  );
                                },
                              ),
                            ),
                            const Spacer(),
                            Text('${movie.voteCount ?? '-'} votes')
                          ],
                        ),
                        const Divider(),
                        RichText(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            text: movie.overview,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(Remix.netflix_line),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Remix.amazon_line),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Remix.youtube_line),
                              onPressed: () {},
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Remix.share_forward_line),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ]),
    );
  }
}

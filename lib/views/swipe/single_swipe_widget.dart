import 'package:filmfinder/views/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:remixicon/remixicon.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleSwipeWidget extends StatelessWidget {
  final String videoId;

  const SingleSwipeWidget({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        // TODO: make this stateful
        mute: true,
        enableCaption: false,
        loop: true,
        controlsVisibleAtStart: false,
        forceHD: true,
        hideControls: false,
        hideThumbnail: true,
      ),
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
                  // TODO: state
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
                        Text('Fast X',
                            style: Theme.of(context).textTheme.headlineMedium),
                        const Divider(),
                        Row(
                          children: <Widget>[
                            RatingBarIndicator(
                              itemSize: padding,
                              rating: 4.5,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                              },
                            ),
                            const Spacer(),
                            const Text('1337 votes')
                          ],
                        ),
                        const Divider(),
                        RichText(
                          maxLines: 5,
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium,
                            text:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, quis aliquet nisl nunc eu nisl. Donec euismod, nisl eget aliquam ultricies, nunc nisl ultricies nunc, quis aliquet nisl nunc eu nisl.',
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

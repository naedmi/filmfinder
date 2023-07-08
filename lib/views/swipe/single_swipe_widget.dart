import 'package:easy_localization/easy_localization.dart';
import 'package:filmfinder/controllers/providers.dart';
import 'package:filmfinder/controllers/swipe/video_controller.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/swipe/video_controller_args.dart';
import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:filmfinder/views/common/constants.dart';
import 'package:filmfinder/views/common/tooltip_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleSwipeWidget extends ConsumerWidget {
  final MovieDetails movie;

  const SingleSwipeWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AutoDisposeFamilyNotifierProvider<VideoController,
            VideoControllerState, VideoControllerArgs> provider =
        providers.videoControllerProvider(VideoControllerArgs(
            isFullscreen:
                MediaQuery.of(context).orientation == Orientation.landscape,
            videoId: movie.videos!.results!.first.key!));
    final VideoControllerState controllerState = ref.watch(provider);
    final VideoController videoController = ref.read(provider.notifier);
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) =>
            orientation == Orientation.portrait
                ? Container(
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
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).padding.top),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 2 -
                                    MediaQuery.of(context).padding.top,
                                child: _buildVideoPlayer(
                                    context, controllerState, videoController)),
                          ),
                          Container(
                              constraints: BoxConstraints(
                                minHeight: 0,
                                maxHeight:
                                    MediaQuery.of(context).size.height / 2,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  controllerState.controller.pause();
                                  context.pushNamed(
                                    'details',
                                    pathParameters: <String, String>{
                                      'id': movie.id.toString()
                                    },
                                  );
                                },
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(padding),
                                  ),
                                  margin: const EdgeInsets.all(padding)
                                      .copyWith(bottom: mainActionButtonHeight),
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding: const EdgeInsets.all(padding),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: <Widget>[
                                      RichText(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium,
                                          text: movie.title,
                                        ),
                                      ),
                                      const Divider(),
                                      Row(
                                        children: <Widget>[
                                          TooltipRatingWidget(
                                            voteAverage: movie.voteAverage,
                                          ),
                                          const Spacer(),
                                          const Text('common.votes')
                                              .tr(args: <String>[
                                            movie.voteCount?.toString() ?? '-'
                                          ])
                                        ],
                                      ),
                                      const Divider(),
                                      RichText(
                                        maxLines: 6,
                                        overflow: TextOverflow.ellipsis,
                                        text: TextSpan(
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                          text: movie.overview,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ]),
                  )
                : _buildVideoPlayer(context, controllerState, videoController));
  }

  YoutubePlayer _buildVideoPlayer(
          BuildContext context,
          VideoControllerState controllerState,
          VideoController videoController) =>
      YoutubePlayer(
        controller: controllerState.controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Theme.of(context).primaryColor,
        bottomActions: <Widget>[
          IconButton.outlined(
              onPressed: () => videoController.toggleMute(),
              color: Colors.white,
              icon: Icon(
                controllerState.isMute
                    ? Remix.volume_mute_line
                    : Remix.volume_up_line,
                color: Colors.white,
              )),
          const Spacer(),
          IconButton.outlined(
              onPressed: () => videoController.toggleFullscreen(),
              color: Colors.white,
              icon: Icon(
                controllerState.isFullscreen
                    ? Remix.fullscreen_exit_line
                    : Remix.fullscreen_line,
                color: Colors.white,
              )),
        ],
        topActions: const <Widget>[],
        progressColors: ProgressBarColors(
          playedColor: Theme.of(context).primaryColor,
          handleColor: Theme.of(context).colorScheme.secondary,
        ),
      );
}

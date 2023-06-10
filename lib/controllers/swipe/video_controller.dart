import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

abstract class VideoController extends StateNotifier<VideoControllerState> {
  VideoController(super.state);

  void toggleMute();
}

class VideoControllerImpl extends VideoController {
  VideoControllerImpl(String movieKey)
      : super(VideoControllerState(
            controller: YoutubePlayerController(
              initialVideoId: movieKey,
              flags: const YoutubePlayerFlags(
                autoPlay: true,
                mute: false,
                enableCaption: false,
                loop: true,
                controlsVisibleAtStart: false,
                forceHD: false,
                hideControls: false,
                hideThumbnail: true,
                startAt: 0,
                disableDragSeek: false,
              ),
            ),
            isMute: false));

  @override
  void toggleMute() {
    state.isMute ? state.controller.unMute() : state.controller.mute();
    state = state.copyWith(isMute: !state.isMute);
  }
}

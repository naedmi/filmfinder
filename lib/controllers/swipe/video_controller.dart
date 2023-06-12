import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

abstract class VideoController
    extends AutoDisposeFamilyNotifier<VideoControllerState, String> {
  void toggleMute();

  void toggleFullscreen();
}

class VideoControllerImpl extends VideoController {
  @override
  void toggleMute() {
    state.isMute ? state.controller.unMute() : state.controller.mute();
    state = state.copyWith(isMute: !state.isMute);
  }

  @override
  void toggleFullscreen() {
    state.controller.toggleFullScreenMode();
    ref.invalidateSelf();
  }

  @override
  VideoControllerState build(String arg) {
    return VideoControllerState(
        controller: YoutubePlayerController(
          initialVideoId: arg,
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
        isMute: false);
  }
}

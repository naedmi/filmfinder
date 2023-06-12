import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter/services.dart';
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
    if (state.isFullscreen) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    }
    state = state.copyWith(isFullscreen: !state.isFullscreen, isMute: false);
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
        isMute: false,
        isFullscreen: false);
  }
}

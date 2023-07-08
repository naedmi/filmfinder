import 'package:filmfinder/models/swipe/video_controller_args.dart';
import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Argument should be the video id.
abstract class VideoController extends AutoDisposeFamilyNotifier<
    VideoControllerState, VideoControllerArgs> {
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
    if (!state.isFullscreen) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    } else {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: <SystemUiOverlay>[
            SystemUiOverlay.top,
            SystemUiOverlay.bottom,
          ]);
      SystemChrome.setPreferredOrientations(<DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
    state = state.copyWith(isFullscreen: !state.isFullscreen, isMute: false);
  }

  @override
  VideoControllerState build(VideoControllerArgs arg) {
    return VideoControllerState(
        controller: YoutubePlayerController(
          initialVideoId: arg.videoId,
          flags: YoutubePlayerFlags(
            autoPlay: true,
            mute: false,
            enableCaption: false,
            loop: true,
            controlsVisibleAtStart: false,
            forceHD: false,
            hideControls: false,
            hideThumbnail: true,
            startAt: arg.startAt,
            disableDragSeek: false,
          ),
        ),
        isMute: arg.isMute,
        isFullscreen: arg.isFullscreen);
  }
}

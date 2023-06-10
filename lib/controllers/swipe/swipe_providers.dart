import 'package:filmfinder/controllers/swipe/swipe_controller.dart';
import 'package:filmfinder/controllers/swipe/video_controller.dart';
import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeStateProvider<SwipeController> swipeControllerProvider =
    StateProvider.autoDispose<SwipeController>(
        (AutoDisposeStateProviderRef<SwipeController> ref) {
  return SwipeControllerImpl(ref);
});

final AutoDisposeStateNotifierProviderFamily<
    VideoController,
    VideoControllerState,
    String> videoControllerProvider = StateNotifierProvider.autoDispose.family<
        VideoController, VideoControllerState, String>(
    (AutoDisposeStateNotifierProviderRef<VideoController, VideoControllerState>
                ref,
            String movieKey) =>
        VideoControllerImpl(movieKey));

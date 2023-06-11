import 'package:filmfinder/controllers/swipe/swipe_controller.dart';
import 'package:filmfinder/controllers/swipe/video_controller.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeAsyncNotifierProvider<SwipeController, List<AsyncValue<MovieDetails>>> swipeControllerProvider =
    AsyncNotifierProvider.autoDispose<SwipeController, List<AsyncValue<MovieDetails>>>(
        () {
  return SwipeControllerImpl();
});

final StateProvider<int> pageProvider = StateProvider<int>((StateProviderRef<int> ref) {
  return 1;
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

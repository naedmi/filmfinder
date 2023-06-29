import 'package:filmfinder/controllers/swipe/swipe_controller.dart';
import 'package:filmfinder/controllers/swipe/video_controller.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/swipe/video_controller_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeAsyncNotifierProvider<SwipeController,
        List<AsyncValue<MovieDetails>>> swipeControllerProvider =
    AsyncNotifierProvider.autoDispose<SwipeController,
        List<AsyncValue<MovieDetails>>>(() => SwipeControllerImpl());

final StateProvider<int> pageProvider =
    StateProvider<int>((StateProviderRef<int> ref) => 1);

final StateProvider<String> movieIdProvider =
    StateProvider<String>((StateProviderRef<String> ref) => '');

final AutoDisposeNotifierProviderFamily<VideoController, VideoControllerState,
        String> videoControllerProvider =
    NotifierProvider.autoDispose
        .family<VideoController, VideoControllerState, String>(
            () => VideoControllerImpl());

import 'package:filmfinder/controllers/settings/settings_provider.dart';
import 'package:filmfinder/models/common/default_response.dart';
import 'package:filmfinder/models/common/discover_params.dart';
import 'package:filmfinder/models/common/movie_result.dart';
import 'package:filmfinder/models/movie_details/movie_details.dart';
import 'package:filmfinder/models/movie_details/movie_params.dart';
import 'package:filmfinder/services/common/discover_service.dart';
import 'package:filmfinder/services/movie_details/movie_details_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

abstract class SwipeController {
  SwipeController(this.ref);

  late AsyncValue<List<AsyncValue<MovieDetails>>> currentMovies;

  final AutoDisposeStateProviderRef<SwipeController> ref;

  YoutubePlayerFlags ytFlags = const YoutubePlayerFlags(
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
  );

  bool isMute();

  void toggleMute();
}

class SwipeControllerImpl extends SwipeController {
  SwipeControllerImpl(AutoDisposeStateProviderRef<SwipeController> ref)
      : super(ref) {
    final String language = ref.watch(settingsLanguageProvider).language;
    final AsyncValue<DefaultResponse> responses =
        ref.watch(discoverApiService(DiscoverParams(language: language)));
    currentMovies = responses.whenData((DefaultResponse response) => response
        .results
        .map((MovieResult movie) => ref.watch(movieDetailsApiService(
            MovieParams(
                movieID: movie.id,
                language: language,
                appendToResponse: 'videos'))))
        .toList());
  }

  @override
  bool isMute() {
    return ytFlags.mute;
  }

  @override
  void toggleMute() {
    ytFlags = ytFlags.copyWith(mute: !ytFlags.mute);
    ref.controller.state = this;
  }
}

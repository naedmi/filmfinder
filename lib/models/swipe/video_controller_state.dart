import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'video_controller_state.freezed.dart';

@freezed
class VideoControllerState with _$VideoControllerState {
  factory VideoControllerState({
    required YoutubePlayerController controller,
    required bool isMute,
  }) = _VideoControllerState;
}

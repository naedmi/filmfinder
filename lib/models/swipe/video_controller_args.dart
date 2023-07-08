import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_controller_args.freezed.dart';

@freezed
class VideoControllerArgs with _$VideoControllerArgs {
  factory VideoControllerArgs({
    required String videoId,
    @Default(0) int startAt,
    @Default(false) bool isMute,
    @Default(false) bool isFullscreen,
  }) = _VideoControllerArgs;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoControllerState {
  YoutubePlayerController get controller => throw _privateConstructorUsedError;
  bool get isMute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoControllerStateCopyWith<VideoControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoControllerStateCopyWith<$Res> {
  factory $VideoControllerStateCopyWith(VideoControllerState value,
          $Res Function(VideoControllerState) then) =
      _$VideoControllerStateCopyWithImpl<$Res, VideoControllerState>;
  @useResult
  $Res call({YoutubePlayerController controller, bool isMute});
}

/// @nodoc
class _$VideoControllerStateCopyWithImpl<$Res,
        $Val extends VideoControllerState>
    implements $VideoControllerStateCopyWith<$Res> {
  _$VideoControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? isMute = null,
  }) {
    return _then(_value.copyWith(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as YoutubePlayerController,
      isMute: null == isMute
          ? _value.isMute
          : isMute // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoControllerStateCopyWith<$Res>
    implements $VideoControllerStateCopyWith<$Res> {
  factory _$$_VideoControllerStateCopyWith(_$_VideoControllerState value,
          $Res Function(_$_VideoControllerState) then) =
      __$$_VideoControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({YoutubePlayerController controller, bool isMute});
}

/// @nodoc
class __$$_VideoControllerStateCopyWithImpl<$Res>
    extends _$VideoControllerStateCopyWithImpl<$Res, _$_VideoControllerState>
    implements _$$_VideoControllerStateCopyWith<$Res> {
  __$$_VideoControllerStateCopyWithImpl(_$_VideoControllerState _value,
      $Res Function(_$_VideoControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? isMute = null,
  }) {
    return _then(_$_VideoControllerState(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as YoutubePlayerController,
      isMute: null == isMute
          ? _value.isMute
          : isMute // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoControllerState implements _VideoControllerState {
  _$_VideoControllerState({required this.controller, required this.isMute});

  @override
  final YoutubePlayerController controller;
  @override
  final bool isMute;

  @override
  String toString() {
    return 'VideoControllerState(controller: $controller, isMute: $isMute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoControllerState &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.isMute, isMute) || other.isMute == isMute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, isMute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoControllerStateCopyWith<_$_VideoControllerState> get copyWith =>
      __$$_VideoControllerStateCopyWithImpl<_$_VideoControllerState>(
          this, _$identity);
}

abstract class _VideoControllerState implements VideoControllerState {
  factory _VideoControllerState(
      {required final YoutubePlayerController controller,
      required final bool isMute}) = _$_VideoControllerState;

  @override
  YoutubePlayerController get controller;
  @override
  bool get isMute;
  @override
  @JsonKey(ignore: true)
  _$$_VideoControllerStateCopyWith<_$_VideoControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

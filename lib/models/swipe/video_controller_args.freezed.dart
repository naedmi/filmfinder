// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_controller_args.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoControllerArgs {
  String get videoId => throw _privateConstructorUsedError;
  int get startAt => throw _privateConstructorUsedError;
  bool get isMute => throw _privateConstructorUsedError;
  bool get isFullscreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoControllerArgsCopyWith<VideoControllerArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoControllerArgsCopyWith<$Res> {
  factory $VideoControllerArgsCopyWith(
          VideoControllerArgs value, $Res Function(VideoControllerArgs) then) =
      _$VideoControllerArgsCopyWithImpl<$Res, VideoControllerArgs>;
  @useResult
  $Res call({String videoId, int startAt, bool isMute, bool isFullscreen});
}

/// @nodoc
class _$VideoControllerArgsCopyWithImpl<$Res, $Val extends VideoControllerArgs>
    implements $VideoControllerArgsCopyWith<$Res> {
  _$VideoControllerArgsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? startAt = null,
    Object? isMute = null,
    Object? isFullscreen = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as int,
      isMute: null == isMute
          ? _value.isMute
          : isMute // ignore: cast_nullable_to_non_nullable
              as bool,
      isFullscreen: null == isFullscreen
          ? _value.isFullscreen
          : isFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoControllerArgsCopyWith<$Res>
    implements $VideoControllerArgsCopyWith<$Res> {
  factory _$$_VideoControllerArgsCopyWith(_$_VideoControllerArgs value,
          $Res Function(_$_VideoControllerArgs) then) =
      __$$_VideoControllerArgsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId, int startAt, bool isMute, bool isFullscreen});
}

/// @nodoc
class __$$_VideoControllerArgsCopyWithImpl<$Res>
    extends _$VideoControllerArgsCopyWithImpl<$Res, _$_VideoControllerArgs>
    implements _$$_VideoControllerArgsCopyWith<$Res> {
  __$$_VideoControllerArgsCopyWithImpl(_$_VideoControllerArgs _value,
      $Res Function(_$_VideoControllerArgs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? startAt = null,
    Object? isMute = null,
    Object? isFullscreen = null,
  }) {
    return _then(_$_VideoControllerArgs(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as int,
      isMute: null == isMute
          ? _value.isMute
          : isMute // ignore: cast_nullable_to_non_nullable
              as bool,
      isFullscreen: null == isFullscreen
          ? _value.isFullscreen
          : isFullscreen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoControllerArgs implements _VideoControllerArgs {
  _$_VideoControllerArgs(
      {required this.videoId,
      this.startAt = 0,
      this.isMute = false,
      this.isFullscreen = false});

  @override
  final String videoId;
  @override
  @JsonKey()
  final int startAt;
  @override
  @JsonKey()
  final bool isMute;
  @override
  @JsonKey()
  final bool isFullscreen;

  @override
  String toString() {
    return 'VideoControllerArgs(videoId: $videoId, startAt: $startAt, isMute: $isMute, isFullscreen: $isFullscreen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoControllerArgs &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.isMute, isMute) || other.isMute == isMute) &&
            (identical(other.isFullscreen, isFullscreen) ||
                other.isFullscreen == isFullscreen));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, videoId, startAt, isMute, isFullscreen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoControllerArgsCopyWith<_$_VideoControllerArgs> get copyWith =>
      __$$_VideoControllerArgsCopyWithImpl<_$_VideoControllerArgs>(
          this, _$identity);
}

abstract class _VideoControllerArgs implements VideoControllerArgs {
  factory _VideoControllerArgs(
      {required final String videoId,
      final int startAt,
      final bool isMute,
      final bool isFullscreen}) = _$_VideoControllerArgs;

  @override
  String get videoId;
  @override
  int get startAt;
  @override
  bool get isMute;
  @override
  bool get isFullscreen;
  @override
  @JsonKey(ignore: true)
  _$$_VideoControllerArgsCopyWith<_$_VideoControllerArgs> get copyWith =>
      throw _privateConstructorUsedError;
}

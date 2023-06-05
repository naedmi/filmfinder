// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsDarkModel {
  bool get darkMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsDarkModelCopyWith<SettingsDarkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDarkModelCopyWith<$Res> {
  factory $SettingsDarkModelCopyWith(
          SettingsDarkModel value, $Res Function(SettingsDarkModel) then) =
      _$SettingsDarkModelCopyWithImpl<$Res, SettingsDarkModel>;
  @useResult
  $Res call({bool darkMode});
}

/// @nodoc
class _$SettingsDarkModelCopyWithImpl<$Res, $Val extends SettingsDarkModel>
    implements $SettingsDarkModelCopyWith<$Res> {
  _$SettingsDarkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
  }) {
    return _then(_value.copyWith(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsDarkModelCopyWith<$Res>
    implements $SettingsDarkModelCopyWith<$Res> {
  factory _$$_SettingsDarkModelCopyWith(_$_SettingsDarkModel value,
          $Res Function(_$_SettingsDarkModel) then) =
      __$$_SettingsDarkModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool darkMode});
}

/// @nodoc
class __$$_SettingsDarkModelCopyWithImpl<$Res>
    extends _$SettingsDarkModelCopyWithImpl<$Res, _$_SettingsDarkModel>
    implements _$$_SettingsDarkModelCopyWith<$Res> {
  __$$_SettingsDarkModelCopyWithImpl(
      _$_SettingsDarkModel _value, $Res Function(_$_SettingsDarkModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? darkMode = null,
  }) {
    return _then(_$_SettingsDarkModel(
      darkMode: null == darkMode
          ? _value.darkMode
          : darkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SettingsDarkModel implements _SettingsDarkModel {
  _$_SettingsDarkModel({this.darkMode = false});

  @override
  @JsonKey()
  final bool darkMode;

  @override
  String toString() {
    return 'SettingsDarkModel(darkMode: $darkMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsDarkModel &&
            (identical(other.darkMode, darkMode) ||
                other.darkMode == darkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, darkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsDarkModelCopyWith<_$_SettingsDarkModel> get copyWith =>
      __$$_SettingsDarkModelCopyWithImpl<_$_SettingsDarkModel>(
          this, _$identity);
}

abstract class _SettingsDarkModel implements SettingsDarkModel {
  factory _SettingsDarkModel({final bool darkMode}) = _$_SettingsDarkModel;

  @override
  bool get darkMode;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsDarkModelCopyWith<_$_SettingsDarkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

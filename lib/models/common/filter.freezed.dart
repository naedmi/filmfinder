// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterProviderModel {
  Map<String, String> get providers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterProviderModelCopyWith<FilterProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterProviderModelCopyWith<$Res> {
  factory $FilterProviderModelCopyWith(
          FilterProviderModel value, $Res Function(FilterProviderModel) then) =
      _$FilterProviderModelCopyWithImpl<$Res, FilterProviderModel>;
  @useResult
  $Res call({Map<String, String> providers});
}

/// @nodoc
class _$FilterProviderModelCopyWithImpl<$Res, $Val extends FilterProviderModel>
    implements $FilterProviderModelCopyWith<$Res> {
  _$FilterProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
  }) {
    return _then(_value.copyWith(
      providers: null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterProviderModelCopyWith<$Res>
    implements $FilterProviderModelCopyWith<$Res> {
  factory _$$_FilterProviderModelCopyWith(_$_FilterProviderModel value,
          $Res Function(_$_FilterProviderModel) then) =
      __$$_FilterProviderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> providers});
}

/// @nodoc
class __$$_FilterProviderModelCopyWithImpl<$Res>
    extends _$FilterProviderModelCopyWithImpl<$Res, _$_FilterProviderModel>
    implements _$$_FilterProviderModelCopyWith<$Res> {
  __$$_FilterProviderModelCopyWithImpl(_$_FilterProviderModel _value,
      $Res Function(_$_FilterProviderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
  }) {
    return _then(_$_FilterProviderModel(
      providers: null == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_FilterProviderModel implements _FilterProviderModel {
  _$_FilterProviderModel(
      {final Map<String, String> providers = const <String, String>{}})
      : _providers = providers;

  final Map<String, String> _providers;
  @override
  @JsonKey()
  Map<String, String> get providers {
    if (_providers is EqualUnmodifiableMapView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_providers);
  }

  @override
  String toString() {
    return 'FilterProviderModel(providers: $providers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterProviderModel &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_providers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterProviderModelCopyWith<_$_FilterProviderModel> get copyWith =>
      __$$_FilterProviderModelCopyWithImpl<_$_FilterProviderModel>(
          this, _$identity);
}

abstract class _FilterProviderModel implements FilterProviderModel {
  factory _FilterProviderModel({final Map<String, String> providers}) =
      _$_FilterProviderModel;

  @override
  Map<String, String> get providers;
  @override
  @JsonKey(ignore: true)
  _$$_FilterProviderModelCopyWith<_$_FilterProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

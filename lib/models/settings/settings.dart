import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

/// **************************************************************************

/// DarkMode *****************************************************************

@freezed
class SettingsDarkModeModel with _$SettingsDarkModeModel {
  factory SettingsDarkModeModel({
    @Default(false) bool darkMode,
  }) = _SettingsDarkModeModel;
}

/// **************************************************************************

/// Language *****************************************************************

@freezed
class SettingsLanguageModel with _$SettingsLanguageModel {
  factory SettingsLanguageModel({
    @Default('en-US') String language,
  }) = _SettingsLanguageModel;
}

/// **************************************************************************

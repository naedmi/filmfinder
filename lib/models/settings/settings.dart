import 'package:freezed_annotation/freezed_annotation.dart';

import '../../views/settings/shared_preferences.dart';

part 'settings.freezed.dart';

@freezed
class SettingsDarkModel with _$SettingsDarkModel {
  factory SettingsDarkModel({
    @Default(false) bool darkMode,
  }) = _SettingsDarkModel;

  factory SettingsDarkModel.initial() {
    return SettingsDarkModel(darkMode: FilmfinderPreferences.getDarkMode());
  }
}

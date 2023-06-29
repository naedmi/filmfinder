import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:filmfinder/services/common/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

/// DarkMode *****************************************************************

class SettingsDarkModeControllerImpl extends SettingsDarkModeController {
  @override
  void switchDarkMode() {
    FilmfinderPreferences.setDarkMode(!FilmfinderPreferences.getDarkMode());
    state = state.copyWith(darkMode: FilmfinderPreferences.getDarkMode());
  }

  @override
  SettingsDarkModeModel build() {
    return SettingsDarkModeModel(darkMode: FilmfinderPreferences.getDarkMode());
  }
}

/// **************************************************************************

/// Language *****************************************************************

class SettingsLanguageControllerImpl extends SettingsLanguageController {
  @override
  void setLanguage(String lang, BuildContext context) {
    FilmfinderPreferences.setLanguage(lang);
    state = state.copyWith(language: FilmfinderPreferences.getLanguage());
  }

  @override
  SettingsLanguageModel build() {
    return SettingsLanguageModel(language: FilmfinderPreferences.getLanguage());
  }
}

/// **************************************************************************

import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/settings/settings.dart';

import '../../views/settings/shared_preferences.dart';

/// **************************************************************************

/// DarkMode *****************************************************************

class SettingsDarkModeControllerImpl extends SettingsDarkModeController {
  SettingsDarkModeControllerImpl({
    SettingsDarkModeModel? model,
  }) : super(model ??
            SettingsDarkModeModel(
                darkMode: FilmfinderPreferences.getDarkMode()));

  @override
  void switchDarkMode() {
    FilmfinderPreferences.setDarkMode(!FilmfinderPreferences.getDarkMode());
    state = state.copyWith(darkMode: FilmfinderPreferences.getDarkMode());
  }
}

/// **************************************************************************

/// Language *****************************************************************

class SettingsLanguageControllerImpl extends SettingsLanguageController {
  SettingsLanguageControllerImpl({
    SettingsLanguageModel? model,
  }) : super(model ??
            SettingsLanguageModel(
                language: FilmfinderPreferences.getLanguage()));

  @override
  void setLanguage(String lang) {
    FilmfinderPreferences.setLanguage(lang);
    state = state.copyWith(language: FilmfinderPreferences.getLanguage());
  }
}

/// **************************************************************************

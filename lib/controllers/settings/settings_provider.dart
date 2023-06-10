import 'package:filmfinder/controllers/settings/settings_controller.dart';
import 'package:filmfinder/controllers/settings/settings_controller_interfaces.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../views/settings/shared_preferences.dart';

/// **************************************************************************

/// DarkMode *****************************************************************

final Provider<SettingsDarkModeModel> settingsDarkProvider =
    Provider<SettingsDarkModeModel>((ProviderRef<SettingsDarkModeModel> ref) {
  final bool darkMode = FilmfinderPreferences.getDarkMode();
  return SettingsDarkModeModel(darkMode: darkMode);
});

final StateNotifierProvider<SettingsDarkModeController, SettingsDarkModeModel>
    settingsControllerProvider =
    StateNotifierProvider<SettingsDarkModeController, SettingsDarkModeModel>(
        (StateNotifierProviderRef<SettingsDarkModeController,
                SettingsDarkModeModel>
            ref) {
  final SettingsDarkModeModel settingsModel =
      SettingsDarkModeModel(darkMode: FilmfinderPreferences.getDarkMode());
  return SettingsDarkModeControllerImpl(model: settingsModel);
});

/// **************************************************************************

/// Language *****************************************************************

final Provider<SettingsLanguageModel> settingsLanguageProvider =
    Provider<SettingsLanguageModel>((ProviderRef<SettingsLanguageModel> ref) {
  final String language = FilmfinderPreferences.getLanguage();
  return SettingsLanguageModel(language: language);
});

final StateNotifierProvider<SettingsLanguageController, SettingsLanguageModel>
    settingsLanguageControllerProvider =
    StateNotifierProvider<SettingsLanguageController, SettingsLanguageModel>(
        (StateNotifierProviderRef<SettingsLanguageController,
                SettingsLanguageModel>
            ref) {
  final SettingsLanguageModel settingsModel =
      SettingsLanguageModel(language: FilmfinderPreferences.getLanguage());
  return SettingsLanguageControllerImpl(model: settingsModel);
});

/// **************************************************************************

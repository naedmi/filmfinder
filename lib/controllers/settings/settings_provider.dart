import 'package:filmfinder/controllers/settings/settings_controller.dart';
import 'package:filmfinder/models/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../views/settings/shared_preferences.dart';

final Provider<SettingsDarkModel> settingsDarkProvider =
    Provider<SettingsDarkModel>((ProviderRef<SettingsDarkModel> ref) {
  final bool darkMode = FilmfinderPreferences.getDarkMode();
  return SettingsDarkModel(darkMode: darkMode);
});

final StateNotifierProvider<SettingsDarkModeController, SettingsDarkModel>
    settingsControllerProvider =
    StateNotifierProvider<SettingsDarkModeController, SettingsDarkModel>(
        (StateNotifierProviderRef<SettingsDarkModeController, SettingsDarkModel>
            ref) {
  final SettingsDarkModel settingsModel =
      SettingsDarkModel(darkMode: FilmfinderPreferences.getDarkMode());
  return SettingsDarkModeControllerImpl(model: settingsModel);
});

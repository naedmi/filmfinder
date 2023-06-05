import 'package:filmfinder/models/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// **************************************************************************

/// DarkMode *****************************************************************

abstract class SettingsDarkModeController
    extends StateNotifier<SettingsDarkModeModel> {
  SettingsDarkModeController(SettingsDarkModeModel state) : super(state);

  void switchDarkMode();
}

/// **************************************************************************

/// Language *****************************************************************

abstract class SettingsLanguageController
    extends StateNotifier<SettingsLanguageModel> {
  SettingsLanguageController(SettingsLanguageModel state) : super(state);

  void setLanguage(String lang);
}

/// **************************************************************************

import 'package:filmfinder/models/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// DarkMode *****************************************************************

abstract class SettingsDarkModeController
    extends Notifier<SettingsDarkModeModel> {
  void switchDarkMode();
}

/// **************************************************************************

/// Language *****************************************************************

abstract class SettingsLanguageController
    extends Notifier<SettingsLanguageModel> {
  void setLanguage(String lang, BuildContext context);
}

/// **************************************************************************

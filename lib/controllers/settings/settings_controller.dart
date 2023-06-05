import 'package:filmfinder/models/settings/settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../views/settings/shared_preferences.dart';

abstract class SettingsDarkModeController
    extends StateNotifier<SettingsDarkModel> {
  SettingsDarkModeController(SettingsDarkModel state) : super(state);

  void switchDarkMode();
}

class SettingsDarkModeControllerImpl extends SettingsDarkModeController {
  SettingsDarkModeControllerImpl({
    SettingsDarkModel? model,
  }) : super(model ??
            SettingsDarkModel(darkMode: FilmfinderPreferences.getDarkMode()));

  @override
  void switchDarkMode() {
    FilmfinderPreferences.setDarkMode(!FilmfinderPreferences.getDarkMode());
    state = state.copyWith(darkMode: FilmfinderPreferences.getDarkMode());
  }
}

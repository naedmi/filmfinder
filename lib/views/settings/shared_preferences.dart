import 'package:filmfinder/views/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FilmfinderPreferences {
  static late SharedPreferences _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static Future<void> setDarkMode(bool value) async =>
      await _preferences.setBool(darkMode, value);

  static bool getDarkMode() => _preferences.getBool(darkMode) ?? false;

  static Future<void> setParentalControl(bool value) async =>
      await _preferences.setBool(parentalControl, value);

  static bool getParentalControl() =>
      _preferences.getBool(parentalControl) ?? false;

  static Future<void> setLanguage(String value) async =>
      await _preferences.setString(language, value);

  static String getLanguage() => _preferences.getString(language) ?? 'en-US';
}

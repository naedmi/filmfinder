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

  static Future<void> setProviders(Map<String, String> providerMap) async {
    List<String> tmpProviders = <String>[];
    for (String key in providerMap.keys) {
      tmpProviders.add('$key;${providerMap[key]}');
    }
    _preferences.setStringList('providers', tmpProviders);
  }

  static Map<String, String> getProviders() {
    Map<String, String> providerMap = <String, String>{};
    List<String>? tmpProviders = _preferences.getStringList('providers');
    if (tmpProviders != null) {
      for (String provider in tmpProviders) {
        List<String> tmpProvider = provider.split(';');
        providerMap[tmpProvider[0]] = tmpProvider[1];
      }
    }
    return providerMap;
  }
}

import 'package:filmfinder/services/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FilmfinderPreferences {
  static late SharedPreferences _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static void setDarkMode(bool value) => _preferences.setBool(darkMode, value);

  static bool getDarkMode() => _preferences.getBool(darkMode) ?? false;

  static void setLanguage(String value) =>
      _preferences.setString(language, value);

  static String getLanguage() => _preferences.getString(language) ?? 'en-US';

  static void setProviders(Map<int, (String, String)> providerMap) {
    List<String> tmpProviders = <String>[];
    for (int key in providerMap.keys) {
      tmpProviders.add('$key;${providerMap[key]?.$1};${providerMap[key]?.$2}');
    }
    _preferences.setStringList('providers', tmpProviders);
  }

  static Map<int, (String, String)> getProviders() {
    Map<int, (String, String)> providerMap = <int, (String, String)>{};
    List<String>? tmpProviders = _preferences.getStringList('providers');
    if (tmpProviders != null) {
      for (String provider in tmpProviders) {
        List<String> tmpProvider = provider.split(';');
        providerMap[int.parse(tmpProvider[0])] =
            (tmpProvider[1], tmpProvider[2]);
      }
    }
    return providerMap;
  }

  static void removeProvider(int key) {
    Map<int, (String, String)> tmpProviders = getProviders();
    tmpProviders.remove(key);
    setProviders(tmpProviders);
  }

  static void addProvider(int key, (String, String) value) {
    Map<int, (String, String)> tmpProviders = getProviders();
    tmpProviders[key] = value;
    setProviders(tmpProviders);
  }

  static void clearProviders() {
    _preferences.remove('providers');
  }

  static void setProvidersLanguage(String value) {
    _preferences.setString('providersLanguage', value);
  }

  static String getProvidersLanguage() {
    return _preferences.getString('providersLanguage') ?? 'en-US';
  }

  static void setGenres(Map<int, String> genres) {
    List<String> tmpGenres = <String>[];
    for (int key in genres.keys) {
      tmpGenres.add('$key;${genres[key]}');
    }
    _preferences.setStringList('genres', tmpGenres);
  }

  static Map<int, String> getGenres() {
    Map<int, String> tmpGenres = <int, String>{};
    List<String>? genres = _preferences.getStringList('genres');
    if (genres != null) {
      for (String genre in genres) {
        List<String> tmpGenre = genre.split(';');
        tmpGenres[int.parse(tmpGenre[0])] = tmpGenre[1];
      }
    }
    return tmpGenres;
  }

  static void removeGenre(int key) {
    Map<int, String> tmpGenres = getGenres();
    tmpGenres.remove(key);
    setGenres(tmpGenres);
  }

  static void addGenre(int key, String value) {
    Map<int, String> tmpGenres = getGenres();
    tmpGenres[key] = value;
    setGenres(tmpGenres);
  }

  static void clearGenres() {
    _preferences.remove('genres');
  }

  static String getGenreQueryString() {
    String queryString = '';
    List<int> tmpGenres = getGenres().keys.toList();
    for (int i = 0; i < tmpGenres.length; i++) {
      queryString += tmpGenres[i].toString();
      if (i < tmpGenres.length - 1) {
        queryString += '|';
      }
    }
    return queryString;
  }

  static String getProviderQueryString() {
    String queryString = '';
    List<int> tmpProviders = getProviders().keys.toList();
    for (int i = 0; i < tmpProviders.length; i++) {
      queryString += tmpProviders[i].toString();
      if (i < tmpProviders.length - 1) {
        queryString += '|';
      }
    }
    return queryString;
  }
}

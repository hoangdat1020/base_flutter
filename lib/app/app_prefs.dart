// ignore_for_file: constant_identifier_names

import 'package:shared_preferences/shared_preferences.dart';

const String PREFS_KEY_IS_USER_LOGGED_IN = "PREFS_KEY_IS_USER_LOGGED_IN";
const String PREFS_KEY_TOKEN = "PREFS_KEY_TOKEN";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? "";
  }

  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  }

  Future<void> logout() async {
    _sharedPreferences.remove(PREFS_KEY_IS_USER_LOGGED_IN);
  }
}

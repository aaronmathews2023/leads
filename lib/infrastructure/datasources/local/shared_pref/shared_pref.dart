import 'package:leads/utils/logger/logger.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  factory SharedPref() => _instance;

  SharedPref._internal();

  static final SharedPref _instance = SharedPref._internal();

  SharedPreferences? _prefs;
  static const String _tokenKey = 'auth_token';
  static const String _firstTime = 'isFirstTime';
  static const String _otpVerified = 'otpVerified';

  Future<SharedPreferences> getPrefs() async =>
      _prefs ??= await SharedPreferences.getInstance();

  Future<String?> getToken() async {
    final prefs = await getPrefs();
    return prefs.getString(_tokenKey);
  }

  Future<void> setToken(String token) async {
    final prefs = await getPrefs();
    await prefs.setString(_tokenKey, token);
  }

  Future<bool?> getFirstTime() async {
    final prefs = await getPrefs();
    return prefs.getBool(_firstTime);
  }

  Future<bool?> getBool(String key) async {
    final prefs = await getPrefs();
    return prefs.getBool(key);
  }

  Future<bool?> getLightTheme() async {
    final prefs = await getPrefs();
    return prefs.getBool("slip_theme");
  }

  Future<bool?> getOtpVerification() async {
    final prefs = await getPrefs();
    return prefs.getBool(_otpVerified);
  }

  Future<void> setFirstTime(bool isFirst) async {
    final prefs = await getPrefs();
    await prefs.setBool(_firstTime, isFirst);
  }

  Future<void> setOtpVerification(bool otpDone) async {
    final prefs = await getPrefs();
    await prefs.setBool(_otpVerified, otpDone);
  }

  Future<void> clearToken() async {
    final prefs = await getPrefs();
    await prefs.remove('auth_token');
    await prefs.remove('refresh_token');
    await prefs.remove('user_id');
    await prefs.remove("client_id");
    await prefs.remove("bussi_id");
    await prefs.remove('bussiness_type');
    await prefs.remove("user_type");
    await prefs.remove("busi_type");
    await prefs.remove(_otpVerified);
  }

  Future<String?> getString(String key) async {
    final prefs = await getPrefs();
    return prefs.getString(key);
  }

  Future<bool?> isUserVerified() async {
    final prefs = await getPrefs();
    String? userId = prefs.getString('user_id');
    if (userId == null || userId == "") {
      AppLogger.e(userId);
      return false;
    } else {
      AppLogger.e(userId);
      return true;
    }
  }

  Future<void> setString(String key, String value) async {
    final prefs = await getPrefs();
    await prefs.setString(key, value);
  }

  Future<void> deleteKey(String key, String value) async {
    final prefs = await getPrefs();
    await prefs.remove(key);
  }

  Future<void> removePref(String key) async {
    final prefs = await getPrefs();
    await prefs.remove(key);
  }

  Future<void> setBool(String key, bool value) async {
    final prefs = await getPrefs();
    await prefs.setBool(key, value);
  }

  Future<void> setLightTheme(bool value) async {
    final prefs = await getPrefs();
    await prefs.setBool("slip_theme", value);
  }
}

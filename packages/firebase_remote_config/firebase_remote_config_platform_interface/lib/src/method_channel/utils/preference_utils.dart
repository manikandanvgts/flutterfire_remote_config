import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUtils {
  late SharedPreferences _preferences;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  //sets
  Future<bool> setString(String key, String value) async {
    final isAdded = await _preferences.setString(key, value);
    return isAdded;
  }

  //gets
  String getString(String key) => _preferences.getString(key) ?? '';

  //deletes
  Future<bool> remove(String key) async {
    final isRemoved = await _preferences.remove(key);
    return isRemoved;
  }
}

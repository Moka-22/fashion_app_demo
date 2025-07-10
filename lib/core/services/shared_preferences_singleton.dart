import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }

  static setString(String key, String value) async {
    await _instance.setString(key, value);
  }

  static getString(String key) {
    return _instance.getString(key) ?? "";
  }
  static Future<void> setTasks(String key, List<Map<String, dynamic>> tasks) async {
    await _instance.setString(key, jsonEncode(tasks));
  }
  static Future<void> saveTasks(String key, List<Map<String, dynamic>> tasks) async {
    await _instance.setString(key, jsonEncode(tasks));
  }

  static Future<List<Map<String, dynamic>>?> getTasks(String key) async {
    final tasksString = _instance.getString(key);
    if (tasksString != null) {
      final List<dynamic> jsonList = jsonDecode(tasksString);
      return jsonList.cast<Map<String, dynamic>>();
    }
    return null;
  }
}

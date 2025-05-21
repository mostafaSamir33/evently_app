import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs {
  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<void> onboardingSetBool(String key, bool value) async {
    await prefs.setBool(key, value);
  }

  static bool? onboardingGetBool(String key){
    return prefs.getBool(key);
  }
}
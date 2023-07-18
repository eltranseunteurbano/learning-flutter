import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = "";
  static bool _darkMode = false;
  static int _gender = 1;

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name => _prefs.getString('name') ?? _name;
  static set name(String value) =>
      {_name = value, _prefs.setString('name', value)};

  static bool get darkMode => _prefs.getBool('darkMode') ?? _darkMode;
  static set darkMode(bool value) =>
      {_darkMode = value, _prefs.setBool('darkMode', value)};

  static int get gender => _prefs.getInt('gender') ?? _gender;
  static set gender(int value) =>
      {_gender = value, _prefs.setInt('gender', value)};
}



import 'package:shared_preferences/shared_preferences.dart';

abstract class IAppPreferences {
  Future<bool> isFirstTime();
  Future<void> setFirstTimeDone();
}

class AppPreferences implements IAppPreferences {
  final SharedPreferences _preferences;

  AppPreferences(this._preferences);

  static const String _keyIsFirstTime = 'is_first_time';

  @override
  Future<bool> isFirstTime() async {
    return _preferences.getBool(_keyIsFirstTime) ?? true;
  }

  @override
  Future<void> setFirstTimeDone() async {
    await _preferences.setBool(_keyIsFirstTime, false);
  }
}

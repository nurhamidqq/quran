import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _sharedPreferences;

  factory LocalStorage() => LocalStorage._internal();
  LocalStorage._internal();

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  String? get surah {
    return _sharedPreferences.getString('surah');
  }

  set surah(String? surah) {
    _sharedPreferences.setString('surah', surah ?? '');
  }

  String? get ayat {
    return _sharedPreferences.getString('ayat');
  }

  set ayat(String? ayat) {
    _sharedPreferences.setString('ayat', ayat ?? '');
  }

  Map<String, dynamic>? get lastRead {
    String? encodedMap = _sharedPreferences.getString('lastRead');

    return jsonDecode(encodedMap ?? '');
  }

  set lastRead(Map<String, dynamic>? data) {
    _sharedPreferences.setString('lastRead', jsonEncode(data));
  }
}

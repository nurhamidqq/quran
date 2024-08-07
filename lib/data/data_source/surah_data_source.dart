import 'dart:convert';
import 'dart:core';

import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart' show rootBundle;
import 'package:quran/data/repositories/surah_repository.dart';
import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';

class SurahDataSource implements SurahRepository {
  final Dio? _dio;

  SurahDataSource({Dio? dio}) : _dio = dio ?? Dio();

  @override
  Future<Result<List<Surah>>> getAllSurah() async {
    try {
      // assets
      // String data = await rootBundle.loadString('assets/surat/surat.json');
      // final list = await compute<String, List<Surah>>(getList, data);
      // return Result.success(list);

      //api
      final response = await _dio!.get('https://equran.id/api/v2/surat');
      List list = response.data['data'];
      return Result.success(list.map((e) => Surah.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  List<Surah> getList(String path) {
    List<dynamic> data = jsonDecode(path);

    return data.map((e) => Surah.fromJson(e)).toList();
  }

  Surah getJson(String path) {
    Map<String, dynamic> data = jsonDecode(path);
    return Surah.fromJson(data);
  }

  @override
  Future<Result<Surah>> getSurah({required int noSurah}) async {
    try {
      // assets
      // String data = await rootBundle.loadString('assets/surat/$noSurah.json');
      // final list = await compute<String, Surah>(getJson, data);
      // return Result.success(list);

      // api
      final response =
          await _dio!.get('https://equran.id/api/v2/surat/$noSurah');
      return Result.success(Surah.fromJson(response.data['data']));
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}

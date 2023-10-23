import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:quran/data/repositories/surah_repository.dart';
import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';

class SurahDataSource implements SurahRepository {
  //final Dio? _dio;

  //SurahDataSource({Dio? dio}) : _dio = dio ?? Dio();

  @override
  Future<Result<List<Surah>>> getAllSurah() async {
    try {
      String data = await rootBundle.loadString('assets/surat/surat.json');
      //final response = await _dio!.get('https://equran.id/api/surat');
      List list = jsonDecode(data);
      return Result.success(list.map((e) => Surah.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<Surah>> getSurah({required int noSurah}) async {
    try {
      String data = await rootBundle.loadString('assets/surat/$noSurah.json');
      return Result.success(Surah.fromJson(jsonDecode(data)));
      // final response = await _dio!.get('https://equran.id/api/surat/$noSurah');
      // return Result.success(Surah.fromJson(response.data));
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}

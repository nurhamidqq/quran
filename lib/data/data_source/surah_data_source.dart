import 'package:dio/dio.dart';
import 'package:quran/data/repositories/surah_repository.dart';
import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';

class SurahDataSource implements SurahRepository {
  final Dio? _dio;

  SurahDataSource({Dio? dio}) : _dio = dio ?? Dio();

  @override
  Future<Result<List<Surah>>> getAllSurah() async {
    try {
      final response = await _dio!.get('https://equran.id/api/surat');
      List list = response.data;
      return Result.success(list.map((e) => Surah.fromJson(e)).toList());
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }

  @override
  Future<Result<Surah>> getSurah({required int noSurah}) async {
    try {
      final response = await _dio!.get('https://equran.id/api/surat/$noSurah');
      return Result.success(Surah.fromJson(response.data));
    } on DioException catch (e) {
      return Result.failed('${e.message}');
    }
  }
}

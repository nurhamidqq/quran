import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';

abstract interface class SurahRepository {
  Future<Result<List<Surah>>> getAllSurah();
  Future<Result<Surah>> getSurah({required int noSurah});
}

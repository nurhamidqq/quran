import 'package:quran/data/repositories/surah_repository.dart';
import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/domain/usecases/usecase.dart';

class GetAllSurah implements UseCase<Result<List<Surah>>, void> {
  final SurahRepository _surahRepository;
  GetAllSurah({
    required SurahRepository surahRepository,
  }) : _surahRepository = surahRepository;

  @override
  Future<Result<List<Surah>>> call(void _) async {
    var surahResult = await _surahRepository.getAllSurah();

    return switch (surahResult) {
      Success(value: final surahList) => Result.success(surahList),
      Failed(:final message) => Result.failed(message)
    };
  }
}

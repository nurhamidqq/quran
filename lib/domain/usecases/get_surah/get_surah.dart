import 'package:quran/data/repositories/surah_repository.dart';
import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/domain/usecases/get_surah/get_surah_param.dart';
import 'package:quran/domain/usecases/usecase.dart';

class GetSurah implements UseCase<Result<Surah>, GetSurahParam> {
  final SurahRepository _surahRepository;
  GetSurah({
    required SurahRepository surahRepository,
  }) : _surahRepository = surahRepository;

  @override
  Future<Result<Surah>> call(GetSurahParam params) async {
    var surahResult = await _surahRepository.getSurah(noSurah: params.nomor);
    if (surahResult.isSuccess) {
      return Result.success(surahResult.resultValue!);
    } else {
      return Result.failed('${surahResult.errorMessage}');
    }
  }
}

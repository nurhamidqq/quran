import 'package:quran/domain/usecases/get_all_surah/get_all_surah.dart';
import 'package:quran/presentation/providers/repositories/surah_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_all_surah_provider.g.dart';

@riverpod
GetAllSurah getAllSurah(GetAllSurahRef ref) =>
    GetAllSurah(surahRepository: ref.watch(surahRepositoryProvider));

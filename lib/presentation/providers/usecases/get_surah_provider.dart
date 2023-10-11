import 'package:quran/domain/usecases/get_surah/get_surah.dart';
import 'package:quran/presentation/providers/repositories/surah_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_surah_provider.g.dart';

@riverpod
GetSurah getSurah(GetSurahRef ref) =>
    GetSurah(surahRepository: ref.watch(surahRepositoryProvider));

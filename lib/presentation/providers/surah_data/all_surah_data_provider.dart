import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/domain/usecases/get_all_surah/get_all_surah.dart';
import 'package:quran/presentation/providers/usecases/get_all_surah_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'all_surah_data_provider.g.dart';

@Riverpod(keepAlive: true)
class AllSurahData extends _$AllSurahData {
  @override
  FutureOr<List<Surah>> build() => const [];

  Future<void> getAllSurah() async {
    state = const AsyncLoading();
    GetAllSurah getAllSurah = ref.read(getAllSurahProvider);
    var result = await getAllSurah(null);
    switch (result) {
      case Success(value: final surahList):
        state = AsyncData(surahList);
      case Failed(message: _):
        state = const AsyncData([]);
    }
  }
}

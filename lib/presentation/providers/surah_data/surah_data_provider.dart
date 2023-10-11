import 'package:quran/domain/entities/result.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/domain/usecases/get_surah/get_surah.dart';
import 'package:quran/domain/usecases/get_surah/get_surah_param.dart';
import 'package:quran/presentation/providers/usecases/get_surah_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'surah_data_provider.g.dart';

@Riverpod(keepAlive: true)
class SurahData extends _$SurahData {
  @override
  Future<Surah?>? build() => null;

  Future<void> getSurah({required int nomor}) async {
    state = const AsyncLoading();
    GetSurah getSurah = await ref.read(getSurahProvider);
    var result = await getSurah(GetSurahParam(nomor: nomor));
    switch (result) {
      case Success(value: final surah):
        state = AsyncData(surah);
      case Failed(message: _):
        state = const AsyncData(null);
    }
  }
}

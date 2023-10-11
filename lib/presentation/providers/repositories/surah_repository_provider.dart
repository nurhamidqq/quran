import 'package:quran/data/data_source/surah_data_source.dart';
import 'package:quran/data/repositories/surah_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'surah_repository_provider.g.dart';

@riverpod
SurahRepository surahRepository(SurahRepositoryRef ref) => SurahDataSource();

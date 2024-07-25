import 'dart:convert';

import 'package:just_audio/just_audio.dart';
import 'package:quran/domain/entities/ayat.dart';
import 'package:quran/domain/entities/surah.dart';
import 'package:quran/presentation/services/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_data_provider.g.dart';

final player = AudioPlayer();

@Riverpod(keepAlive: true)
class AudioData extends _$AudioData {
  @override
  Future<Map<int, Ayat?>> build() async => {};

  Future<void> play(
      {required Surah surah, required int index, required int noSurah}) async {
    state = const AsyncLoading();
    var ayat = surah.ayat.singleWhere((element) =>
        element.nomorAyat == surah.ayat.elementAt(index).nomorAyat);
    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: surah.ayat
          .map((e) => AudioSource.uri(Uri.parse(e.audio.no5)))
          .toList(),
    );
    await player.setAudioSource(playlist, initialIndex: index);
    player.play().asStream();
    player.playerStateStream.listen((event) {
      if (event.playing) {
        state = AsyncData({noSurah: ayat.copyWith(isPlaying: true)});
        LocalStorage().surah = jsonEncode(surah);
      }

      if (event.processingState == ProcessingState.completed) {
        player.stop().asStream();
      }
    });
  }

  Stream<int?> stream() async* {
    yield* player.currentIndexStream;
  }

  Stream<PlayerState> playing() async* {
    yield* player.playerStateStream;
  }

  void stop() {
    player.stop().asStream();
  }

  void pause() {
    player.pause().asStream();
  }

  void resume() {
    player.play().asStream();
  }
}

//'https://cdn.islamic.network/quran/audio/128/ar.alafasy/1.mp3
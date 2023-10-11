import 'package:just_audio/just_audio.dart';
import 'package:quran/domain/entities/ayat.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'audio_data_provider.g.dart';

final player = AudioPlayer();

@Riverpod(keepAlive: true)
class AudioData extends _$AudioData {
  @override
  Future<Map<int, Ayat?>> build() async => {};

  // Future<void> play({required List<Ayat> listAyat, required int id}) async {
  //   state = const AsyncLoading();
  //   var ayat = listAyat.singleWhere((element) => element.id == id);
  //   final source = getSource(ayat);
  //   if (player.playing) {
  //     await stop();
  //     state = AsyncData(ayat.copyWith(isPlaying: false));
  //   }
  //   state = AsyncData(ayat.copyWith(isPlaying: true));
  //   await player.setAudioSource(source);
  //   await player.play().whenComplete(() => stop());
  //   state = AsyncData(ayat.copyWith(isPlaying: false));
  // }

  Future<void> play(
      {required List<Ayat> listAyat,
      required int index,
      required int noSurah}) async {
    state = const AsyncLoading();
    var ayat = listAyat
        .singleWhere((element) => element.id == listAyat.elementAt(index).id);
    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: listAyat
          .map((e) => AudioSource.uri(Uri.parse(
              'https://cdn.islamic.network/quran/audio/128/ar.alafasy/${e.id}.mp3')))
          .toList(),
    );
    await player.setAudioSource(playlist, initialIndex: index);
    player.play().asStream();
    player.playerStateStream.listen((event) {
      if (event.playing) {
        state = AsyncData({noSurah: ayat.copyWith(isPlaying: true)});
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

  // LockCachingAudioSource getSource(Ayat ayat) {
  //   return LockCachingAudioSource(Uri.parse(
  //       'https://cdn.islamic.network/quran/audio/128/ar.alafasy/${ayat.id - 1}.mp3'));
  // }
}

import 'package:just_audio/just_audio.dart';

class Audio {
  final player = AudioPlayer();

  Future<void> play({required int noAyat}) async {
    final source = LockCachingAudioSource(Uri.parse(
        'https://cdn.islamic.network/quran/audio/128/ar.alafasy/$noAyat.mp3'));
    await player.setAudioSource(source);
    await player.play();
  }

  Future<void> stop() async {
    await player.stop();
  }

  Future<void> pause() async {
    await player.pause();
  }
}

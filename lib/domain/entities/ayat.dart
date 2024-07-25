// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayat.freezed.dart';
part 'ayat.g.dart';

@freezed
class Ayat with _$Ayat {
  factory Ayat(
      {required int nomorAyat,
      required String teksArab,
      required String teksLatin,
      required String teksIndonesia,
      required Audio audio,
      @Default(false) bool isPlaying}) = _Ayat;

  factory Ayat.fromJson(Map<String, dynamic> json) => _$AyatFromJson(json);
}

@freezed
class Audio with _$Audio {
  factory Audio(
      {@JsonKey(name: '01') required String no1,
      @JsonKey(name: '02') required String no2,
      @JsonKey(name: '03') required String no3,
      @JsonKey(name: '04') required String no4,
      @JsonKey(name: '05') required String no5}) = _Audio;
  factory Audio.fromJson(Map<String, dynamic> json) => _$AudioFromJson(json);
}

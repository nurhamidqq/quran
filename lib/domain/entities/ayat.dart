import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayat.freezed.dart';
part 'ayat.g.dart';

@freezed
class Ayat with _$Ayat {
  factory Ayat(
      {required int id,
      required int surah,
      required int nomor,
      required String ar,
      required String tr,
      required String idn,
      @Default(false) bool isPlaying}) = _Ayat;

  factory Ayat.fromJson(Map<String, dynamic> json) => _$AyatFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/domain/entities/ayat.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  factory Surah(
      {required int nomor,
      required String nama,
      // ignore: non_constant_identifier_names
      required String nama_latin,
      // ignore: non_constant_identifier_names
      required int jumlah_ayat,
      // ignore: non_constant_identifier_names
      required String tempat_turun,
      required String arti,
      required String deskripsi,
      required String audio,
      @Default(false) bool status,
      List<Ayat>? ayat}) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

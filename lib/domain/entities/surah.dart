import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/domain/entities/ayat.dart';

part 'surah.freezed.dart';
part 'surah.g.dart';

@freezed
class Surah with _$Surah {
  factory Surah({
    required int nomor,
    required String nama,
    // ignore: non_constant_identifier_names
    required String namaLatin,
    // ignore: non_constant_identifier_names
    required int jumlahAyat,
    // ignore: non_constant_identifier_names
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    // required String audio,
    @Default(false) bool status,
    @Default([]) List<Ayat> ayat,
  }) = _Surah;

  factory Surah.fromJson(Map<String, dynamic> json) => _$SurahFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_selanjutnya.freezed.dart';
part 'surah_selanjutnya.g.dart';

@freezed
class SurahSelanjutnya with _$SurahSelanjutnya {
  factory SurahSelanjutnya(
      {required int nomor,
      required String nama,
      required String namaLatin,
      required int jumlahAyat}) = _SurahSelanjutnya;

  factory SurahSelanjutnya.fromJson(Map<String, dynamic> json) =>
      _$SurahSelanjutnyaFromJson(json);
}

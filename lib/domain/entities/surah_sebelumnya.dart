import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_sebelumnya.freezed.dart';
part 'surah_sebelumnya.g.dart';

@freezed
class SurahSebelumnya with _$SurahSebelumnya {
  factory SurahSebelumnya(
      {required int nomor,
      required String nama,
      required String namaLatin,
      required int jumlahAyat}) = _SurahSebelumnya;

  factory SurahSebelumnya.fromJson(Map<String, dynamic> json) =>
      _$SurahSebelumnyaFromJson(json);
}

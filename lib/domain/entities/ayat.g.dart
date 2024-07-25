// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyatImpl _$$AyatImplFromJson(Map<String, dynamic> json) => _$AyatImpl(
      nomorAyat: json['nomorAyat'] as int,
      teksArab: json['teksArab'] as String,
      teksLatin: json['teksLatin'] as String,
      teksIndonesia: json['teksIndonesia'] as String,
      audio: Audio.fromJson(json['audio'] as Map<String, dynamic>),
      isPlaying: json['isPlaying'] as bool? ?? false,
    );

Map<String, dynamic> _$$AyatImplToJson(_$AyatImpl instance) =>
    <String, dynamic>{
      'nomorAyat': instance.nomorAyat,
      'teksArab': instance.teksArab,
      'teksLatin': instance.teksLatin,
      'teksIndonesia': instance.teksIndonesia,
      'audio': instance.audio,
      'isPlaying': instance.isPlaying,
    };

_$AudioImpl _$$AudioImplFromJson(Map<String, dynamic> json) => _$AudioImpl(
      no1: json['01'] as String,
      no2: json['02'] as String,
      no3: json['03'] as String,
      no4: json['04'] as String,
      no5: json['05'] as String,
    );

Map<String, dynamic> _$$AudioImplToJson(_$AudioImpl instance) =>
    <String, dynamic>{
      '01': instance.no1,
      '02': instance.no2,
      '03': instance.no3,
      '04': instance.no4,
      '05': instance.no5,
    };

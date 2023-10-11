// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyatImpl _$$AyatImplFromJson(Map<String, dynamic> json) => _$AyatImpl(
      id: json['id'] as int,
      surah: json['surah'] as int,
      nomor: json['nomor'] as int,
      ar: json['ar'] as String,
      tr: json['tr'] as String,
      idn: json['idn'] as String,
      isPlaying: json['isPlaying'] as bool? ?? false,
    );

Map<String, dynamic> _$$AyatImplToJson(_$AyatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surah': instance.surah,
      'nomor': instance.nomor,
      'ar': instance.ar,
      'tr': instance.tr,
      'idn': instance.idn,
      'isPlaying': instance.isPlaying,
    };

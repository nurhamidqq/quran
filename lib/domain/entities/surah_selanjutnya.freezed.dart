// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_selanjutnya.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurahSelanjutnya _$SurahSelanjutnyaFromJson(Map<String, dynamic> json) {
  return _SurahSelanjutnya.fromJson(json);
}

/// @nodoc
mixin _$SurahSelanjutnya {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahSelanjutnyaCopyWith<SurahSelanjutnya> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahSelanjutnyaCopyWith<$Res> {
  factory $SurahSelanjutnyaCopyWith(
          SurahSelanjutnya value, $Res Function(SurahSelanjutnya) then) =
      _$SurahSelanjutnyaCopyWithImpl<$Res, SurahSelanjutnya>;
  @useResult
  $Res call({int nomor, String nama, String namaLatin, int jumlahAyat});
}

/// @nodoc
class _$SurahSelanjutnyaCopyWithImpl<$Res, $Val extends SurahSelanjutnya>
    implements $SurahSelanjutnyaCopyWith<$Res> {
  _$SurahSelanjutnyaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
  }) {
    return _then(_value.copyWith(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahSelanjutnyaImplCopyWith<$Res>
    implements $SurahSelanjutnyaCopyWith<$Res> {
  factory _$$SurahSelanjutnyaImplCopyWith(_$SurahSelanjutnyaImpl value,
          $Res Function(_$SurahSelanjutnyaImpl) then) =
      __$$SurahSelanjutnyaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int nomor, String nama, String namaLatin, int jumlahAyat});
}

/// @nodoc
class __$$SurahSelanjutnyaImplCopyWithImpl<$Res>
    extends _$SurahSelanjutnyaCopyWithImpl<$Res, _$SurahSelanjutnyaImpl>
    implements _$$SurahSelanjutnyaImplCopyWith<$Res> {
  __$$SurahSelanjutnyaImplCopyWithImpl(_$SurahSelanjutnyaImpl _value,
      $Res Function(_$SurahSelanjutnyaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
  }) {
    return _then(_$SurahSelanjutnyaImpl(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahSelanjutnyaImpl implements _SurahSelanjutnya {
  _$SurahSelanjutnyaImpl(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat});

  factory _$SurahSelanjutnyaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahSelanjutnyaImplFromJson(json);

  @override
  final int nomor;
  @override
  final String nama;
  @override
  final String namaLatin;
  @override
  final int jumlahAyat;

  @override
  String toString() {
    return 'SurahSelanjutnya(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahSelanjutnyaImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nomor, nama, namaLatin, jumlahAyat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahSelanjutnyaImplCopyWith<_$SurahSelanjutnyaImpl> get copyWith =>
      __$$SurahSelanjutnyaImplCopyWithImpl<_$SurahSelanjutnyaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahSelanjutnyaImplToJson(
      this,
    );
  }
}

abstract class _SurahSelanjutnya implements SurahSelanjutnya {
  factory _SurahSelanjutnya(
      {required final int nomor,
      required final String nama,
      required final String namaLatin,
      required final int jumlahAyat}) = _$SurahSelanjutnyaImpl;

  factory _SurahSelanjutnya.fromJson(Map<String, dynamic> json) =
      _$SurahSelanjutnyaImpl.fromJson;

  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get namaLatin;
  @override
  int get jumlahAyat;
  @override
  @JsonKey(ignore: true)
  _$$SurahSelanjutnyaImplCopyWith<_$SurahSelanjutnyaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ayat _$AyatFromJson(Map<String, dynamic> json) {
  return _Ayat.fromJson(json);
}

/// @nodoc
mixin _$Ayat {
//required int? id,
// required int surah,
  int get nomorAyat => throw _privateConstructorUsedError;
  String get teksArab => throw _privateConstructorUsedError;
  String get teksLatin => throw _privateConstructorUsedError;
  String get teksIndonesia => throw _privateConstructorUsedError;
  Audio get audio => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AyatCopyWith<Ayat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyatCopyWith<$Res> {
  factory $AyatCopyWith(Ayat value, $Res Function(Ayat) then) =
      _$AyatCopyWithImpl<$Res, Ayat>;
  @useResult
  $Res call(
      {int nomorAyat,
      String teksArab,
      String teksLatin,
      String teksIndonesia,
      Audio audio,
      bool isPlaying});

  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class _$AyatCopyWithImpl<$Res, $Val extends Ayat>
    implements $AyatCopyWith<$Res> {
  _$AyatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
    Object? audio = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioCopyWith<$Res> get audio {
    return $AudioCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AyatImplCopyWith<$Res> implements $AyatCopyWith<$Res> {
  factory _$$AyatImplCopyWith(
          _$AyatImpl value, $Res Function(_$AyatImpl) then) =
      __$$AyatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomorAyat,
      String teksArab,
      String teksLatin,
      String teksIndonesia,
      Audio audio,
      bool isPlaying});

  @override
  $AudioCopyWith<$Res> get audio;
}

/// @nodoc
class __$$AyatImplCopyWithImpl<$Res>
    extends _$AyatCopyWithImpl<$Res, _$AyatImpl>
    implements _$$AyatImplCopyWith<$Res> {
  __$$AyatImplCopyWithImpl(_$AyatImpl _value, $Res Function(_$AyatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
    Object? audio = null,
    Object? isPlaying = null,
  }) {
    return _then(_$AyatImpl(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Audio,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyatImpl implements _Ayat {
  _$AyatImpl(
      {required this.nomorAyat,
      required this.teksArab,
      required this.teksLatin,
      required this.teksIndonesia,
      required this.audio,
      this.isPlaying = false});

  factory _$AyatImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyatImplFromJson(json);

//required int? id,
// required int surah,
  @override
  final int nomorAyat;
  @override
  final String teksArab;
  @override
  final String teksLatin;
  @override
  final String teksIndonesia;
  @override
  final Audio audio;
  @override
  @JsonKey()
  final bool isPlaying;

  @override
  String toString() {
    return 'Ayat(nomorAyat: $nomorAyat, teksArab: $teksArab, teksLatin: $teksLatin, teksIndonesia: $teksIndonesia, audio: $audio, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyatImpl &&
            (identical(other.nomorAyat, nomorAyat) ||
                other.nomorAyat == nomorAyat) &&
            (identical(other.teksArab, teksArab) ||
                other.teksArab == teksArab) &&
            (identical(other.teksLatin, teksLatin) ||
                other.teksLatin == teksLatin) &&
            (identical(other.teksIndonesia, teksIndonesia) ||
                other.teksIndonesia == teksIndonesia) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nomorAyat, teksArab, teksLatin,
      teksIndonesia, audio, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      __$$AyatImplCopyWithImpl<_$AyatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyatImplToJson(
      this,
    );
  }
}

abstract class _Ayat implements Ayat {
  factory _Ayat(
      {required final int nomorAyat,
      required final String teksArab,
      required final String teksLatin,
      required final String teksIndonesia,
      required final Audio audio,
      final bool isPlaying}) = _$AyatImpl;

  factory _Ayat.fromJson(Map<String, dynamic> json) = _$AyatImpl.fromJson;

  @override //required int? id,
// required int surah,
  int get nomorAyat;
  @override
  String get teksArab;
  @override
  String get teksLatin;
  @override
  String get teksIndonesia;
  @override
  Audio get audio;
  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$AyatImplCopyWith<_$AyatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Audio _$AudioFromJson(Map<String, dynamic> json) {
  return _Audio.fromJson(json);
}

/// @nodoc
mixin _$Audio {
  @JsonKey(name: '01')
  String get no1 => throw _privateConstructorUsedError;
  @JsonKey(name: '02')
  String get no2 => throw _privateConstructorUsedError;
  @JsonKey(name: '03')
  String get no3 => throw _privateConstructorUsedError;
  @JsonKey(name: '04')
  String get no4 => throw _privateConstructorUsedError;
  @JsonKey(name: '05')
  String get no5 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioCopyWith<Audio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioCopyWith<$Res> {
  factory $AudioCopyWith(Audio value, $Res Function(Audio) then) =
      _$AudioCopyWithImpl<$Res, Audio>;
  @useResult
  $Res call(
      {@JsonKey(name: '01') String no1,
      @JsonKey(name: '02') String no2,
      @JsonKey(name: '03') String no3,
      @JsonKey(name: '04') String no4,
      @JsonKey(name: '05') String no5});
}

/// @nodoc
class _$AudioCopyWithImpl<$Res, $Val extends Audio>
    implements $AudioCopyWith<$Res> {
  _$AudioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no1 = null,
    Object? no2 = null,
    Object? no3 = null,
    Object? no4 = null,
    Object? no5 = null,
  }) {
    return _then(_value.copyWith(
      no1: null == no1
          ? _value.no1
          : no1 // ignore: cast_nullable_to_non_nullable
              as String,
      no2: null == no2
          ? _value.no2
          : no2 // ignore: cast_nullable_to_non_nullable
              as String,
      no3: null == no3
          ? _value.no3
          : no3 // ignore: cast_nullable_to_non_nullable
              as String,
      no4: null == no4
          ? _value.no4
          : no4 // ignore: cast_nullable_to_non_nullable
              as String,
      no5: null == no5
          ? _value.no5
          : no5 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioImplCopyWith<$Res> implements $AudioCopyWith<$Res> {
  factory _$$AudioImplCopyWith(
          _$AudioImpl value, $Res Function(_$AudioImpl) then) =
      __$$AudioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '01') String no1,
      @JsonKey(name: '02') String no2,
      @JsonKey(name: '03') String no3,
      @JsonKey(name: '04') String no4,
      @JsonKey(name: '05') String no5});
}

/// @nodoc
class __$$AudioImplCopyWithImpl<$Res>
    extends _$AudioCopyWithImpl<$Res, _$AudioImpl>
    implements _$$AudioImplCopyWith<$Res> {
  __$$AudioImplCopyWithImpl(
      _$AudioImpl _value, $Res Function(_$AudioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no1 = null,
    Object? no2 = null,
    Object? no3 = null,
    Object? no4 = null,
    Object? no5 = null,
  }) {
    return _then(_$AudioImpl(
      no1: null == no1
          ? _value.no1
          : no1 // ignore: cast_nullable_to_non_nullable
              as String,
      no2: null == no2
          ? _value.no2
          : no2 // ignore: cast_nullable_to_non_nullable
              as String,
      no3: null == no3
          ? _value.no3
          : no3 // ignore: cast_nullable_to_non_nullable
              as String,
      no4: null == no4
          ? _value.no4
          : no4 // ignore: cast_nullable_to_non_nullable
              as String,
      no5: null == no5
          ? _value.no5
          : no5 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioImpl implements _Audio {
  _$AudioImpl(
      {@JsonKey(name: '01') required this.no1,
      @JsonKey(name: '02') required this.no2,
      @JsonKey(name: '03') required this.no3,
      @JsonKey(name: '04') required this.no4,
      @JsonKey(name: '05') required this.no5});

  factory _$AudioImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioImplFromJson(json);

  @override
  @JsonKey(name: '01')
  final String no1;
  @override
  @JsonKey(name: '02')
  final String no2;
  @override
  @JsonKey(name: '03')
  final String no3;
  @override
  @JsonKey(name: '04')
  final String no4;
  @override
  @JsonKey(name: '05')
  final String no5;

  @override
  String toString() {
    return 'Audio(no1: $no1, no2: $no2, no3: $no3, no4: $no4, no5: $no5)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioImpl &&
            (identical(other.no1, no1) || other.no1 == no1) &&
            (identical(other.no2, no2) || other.no2 == no2) &&
            (identical(other.no3, no3) || other.no3 == no3) &&
            (identical(other.no4, no4) || other.no4 == no4) &&
            (identical(other.no5, no5) || other.no5 == no5));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, no1, no2, no3, no4, no5);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      __$$AudioImplCopyWithImpl<_$AudioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioImplToJson(
      this,
    );
  }
}

abstract class _Audio implements Audio {
  factory _Audio(
      {@JsonKey(name: '01') required final String no1,
      @JsonKey(name: '02') required final String no2,
      @JsonKey(name: '03') required final String no3,
      @JsonKey(name: '04') required final String no4,
      @JsonKey(name: '05') required final String no5}) = _$AudioImpl;

  factory _Audio.fromJson(Map<String, dynamic> json) = _$AudioImpl.fromJson;

  @override
  @JsonKey(name: '01')
  String get no1;
  @override
  @JsonKey(name: '02')
  String get no2;
  @override
  @JsonKey(name: '03')
  String get no3;
  @override
  @JsonKey(name: '04')
  String get no4;
  @override
  @JsonKey(name: '05')
  String get no5;
  @override
  @JsonKey(ignore: true)
  _$$AudioImplCopyWith<_$AudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

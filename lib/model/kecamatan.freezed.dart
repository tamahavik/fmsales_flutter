// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kecamatan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kecamatan _$KecamatanFromJson(Map<String, dynamic> json) {
  return _Kecamatan.fromJson(json);
}

/// @nodoc
mixin _$Kecamatan {
  String? get kecCode => throw _privateConstructorUsedError;
  String? get kecamatan => throw _privateConstructorUsedError;
  String? get cityCode => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KecamatanCopyWith<Kecamatan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KecamatanCopyWith<$Res> {
  factory $KecamatanCopyWith(Kecamatan value, $Res Function(Kecamatan) then) =
      _$KecamatanCopyWithImpl<$Res, Kecamatan>;
  @useResult
  $Res call(
      {String? kecCode, String? kecamatan, String? cityCode, String? action});
}

/// @nodoc
class _$KecamatanCopyWithImpl<$Res, $Val extends Kecamatan>
    implements $KecamatanCopyWith<$Res> {
  _$KecamatanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kecCode = freezed,
    Object? kecamatan = freezed,
    Object? cityCode = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      kecCode: freezed == kecCode
          ? _value.kecCode
          : kecCode // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KecamatanCopyWith<$Res> implements $KecamatanCopyWith<$Res> {
  factory _$$_KecamatanCopyWith(
          _$_Kecamatan value, $Res Function(_$_Kecamatan) then) =
      __$$_KecamatanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kecCode, String? kecamatan, String? cityCode, String? action});
}

/// @nodoc
class __$$_KecamatanCopyWithImpl<$Res>
    extends _$KecamatanCopyWithImpl<$Res, _$_Kecamatan>
    implements _$$_KecamatanCopyWith<$Res> {
  __$$_KecamatanCopyWithImpl(
      _$_Kecamatan _value, $Res Function(_$_Kecamatan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kecCode = freezed,
    Object? kecamatan = freezed,
    Object? cityCode = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_Kecamatan(
      kecCode: freezed == kecCode
          ? _value.kecCode
          : kecCode // ignore: cast_nullable_to_non_nullable
              as String?,
      kecamatan: freezed == kecamatan
          ? _value.kecamatan
          : kecamatan // ignore: cast_nullable_to_non_nullable
              as String?,
      cityCode: freezed == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kecamatan implements _Kecamatan {
  const _$_Kecamatan(
      {this.kecCode, this.kecamatan, this.cityCode, this.action});

  factory _$_Kecamatan.fromJson(Map<String, dynamic> json) =>
      _$$_KecamatanFromJson(json);

  @override
  final String? kecCode;
  @override
  final String? kecamatan;
  @override
  final String? cityCode;
  @override
  final String? action;

  @override
  String toString() {
    return 'Kecamatan(kecCode: $kecCode, kecamatan: $kecamatan, cityCode: $cityCode, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kecamatan &&
            (identical(other.kecCode, kecCode) || other.kecCode == kecCode) &&
            (identical(other.kecamatan, kecamatan) ||
                other.kecamatan == kecamatan) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kecCode, kecamatan, cityCode, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KecamatanCopyWith<_$_Kecamatan> get copyWith =>
      __$$_KecamatanCopyWithImpl<_$_Kecamatan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KecamatanToJson(
      this,
    );
  }
}

abstract class _Kecamatan implements Kecamatan {
  const factory _Kecamatan(
      {final String? kecCode,
      final String? kecamatan,
      final String? cityCode,
      final String? action}) = _$_Kecamatan;

  factory _Kecamatan.fromJson(Map<String, dynamic> json) =
      _$_Kecamatan.fromJson;

  @override
  String? get kecCode;
  @override
  String? get kecamatan;
  @override
  String? get cityCode;
  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$_KecamatanCopyWith<_$_Kecamatan> get copyWith =>
      throw _privateConstructorUsedError;
}

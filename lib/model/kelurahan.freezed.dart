// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kelurahan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Kelurahan _$KelurahanFromJson(Map<String, dynamic> json) {
  return _Kelurahan.fromJson(json);
}

/// @nodoc
mixin _$Kelurahan {
  String? get kelCode => throw _privateConstructorUsedError;
  String? get kelurahan => throw _privateConstructorUsedError;
  String? get kecCode => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KelurahanCopyWith<Kelurahan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KelurahanCopyWith<$Res> {
  factory $KelurahanCopyWith(Kelurahan value, $Res Function(Kelurahan) then) =
      _$KelurahanCopyWithImpl<$Res, Kelurahan>;
  @useResult
  $Res call(
      {String? kelCode, String? kelurahan, String? kecCode, String? action});
}

/// @nodoc
class _$KelurahanCopyWithImpl<$Res, $Val extends Kelurahan>
    implements $KelurahanCopyWith<$Res> {
  _$KelurahanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelCode = freezed,
    Object? kelurahan = freezed,
    Object? kecCode = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      kelCode: freezed == kelCode
          ? _value.kelCode
          : kelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      kelurahan: freezed == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kecCode: freezed == kecCode
          ? _value.kecCode
          : kecCode // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KelurahanCopyWith<$Res> implements $KelurahanCopyWith<$Res> {
  factory _$$_KelurahanCopyWith(
          _$_Kelurahan value, $Res Function(_$_Kelurahan) then) =
      __$$_KelurahanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? kelCode, String? kelurahan, String? kecCode, String? action});
}

/// @nodoc
class __$$_KelurahanCopyWithImpl<$Res>
    extends _$KelurahanCopyWithImpl<$Res, _$_Kelurahan>
    implements _$$_KelurahanCopyWith<$Res> {
  __$$_KelurahanCopyWithImpl(
      _$_Kelurahan _value, $Res Function(_$_Kelurahan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kelCode = freezed,
    Object? kelurahan = freezed,
    Object? kecCode = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_Kelurahan(
      kelCode: freezed == kelCode
          ? _value.kelCode
          : kelCode // ignore: cast_nullable_to_non_nullable
              as String?,
      kelurahan: freezed == kelurahan
          ? _value.kelurahan
          : kelurahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kecCode: freezed == kecCode
          ? _value.kecCode
          : kecCode // ignore: cast_nullable_to_non_nullable
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
class _$_Kelurahan implements _Kelurahan {
  const _$_Kelurahan({this.kelCode, this.kelurahan, this.kecCode, this.action});

  factory _$_Kelurahan.fromJson(Map<String, dynamic> json) =>
      _$$_KelurahanFromJson(json);

  @override
  final String? kelCode;
  @override
  final String? kelurahan;
  @override
  final String? kecCode;
  @override
  final String? action;

  @override
  String toString() {
    return 'Kelurahan(kelCode: $kelCode, kelurahan: $kelurahan, kecCode: $kecCode, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kelurahan &&
            (identical(other.kelCode, kelCode) || other.kelCode == kelCode) &&
            (identical(other.kelurahan, kelurahan) ||
                other.kelurahan == kelurahan) &&
            (identical(other.kecCode, kecCode) || other.kecCode == kecCode) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kelCode, kelurahan, kecCode, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KelurahanCopyWith<_$_Kelurahan> get copyWith =>
      __$$_KelurahanCopyWithImpl<_$_Kelurahan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KelurahanToJson(
      this,
    );
  }
}

abstract class _Kelurahan implements Kelurahan {
  const factory _Kelurahan(
      {final String? kelCode,
      final String? kelurahan,
      final String? kecCode,
      final String? action}) = _$_Kelurahan;

  factory _Kelurahan.fromJson(Map<String, dynamic> json) =
      _$_Kelurahan.fromJson;

  @override
  String? get kelCode;
  @override
  String? get kelurahan;
  @override
  String? get kecCode;
  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$_KelurahanCopyWith<_$_Kelurahan> get copyWith =>
      throw _privateConstructorUsedError;
}

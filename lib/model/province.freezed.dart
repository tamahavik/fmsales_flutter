// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Province _$ProvinceFromJson(Map<String, dynamic> json) {
  return _Province.fromJson(json);
}

/// @nodoc
mixin _$Province {
  String? get provCode => throw _privateConstructorUsedError;
  String? get provinsi => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProvinceCopyWith<Province> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceCopyWith<$Res> {
  factory $ProvinceCopyWith(Province value, $Res Function(Province) then) =
      _$ProvinceCopyWithImpl<$Res, Province>;
  @useResult
  $Res call({String? provCode, String? provinsi, String? action});
}

/// @nodoc
class _$ProvinceCopyWithImpl<$Res, $Val extends Province>
    implements $ProvinceCopyWith<$Res> {
  _$ProvinceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provCode = freezed,
    Object? provinsi = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      provCode: freezed == provCode
          ? _value.provCode
          : provCode // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProvinceCopyWith<$Res> implements $ProvinceCopyWith<$Res> {
  factory _$$_ProvinceCopyWith(
          _$_Province value, $Res Function(_$_Province) then) =
      __$$_ProvinceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? provCode, String? provinsi, String? action});
}

/// @nodoc
class __$$_ProvinceCopyWithImpl<$Res>
    extends _$ProvinceCopyWithImpl<$Res, _$_Province>
    implements _$$_ProvinceCopyWith<$Res> {
  __$$_ProvinceCopyWithImpl(
      _$_Province _value, $Res Function(_$_Province) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provCode = freezed,
    Object? provinsi = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_Province(
      provCode: freezed == provCode
          ? _value.provCode
          : provCode // ignore: cast_nullable_to_non_nullable
              as String?,
      provinsi: freezed == provinsi
          ? _value.provinsi
          : provinsi // ignore: cast_nullable_to_non_nullable
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
class _$_Province implements _Province {
  const _$_Province({this.provCode, this.provinsi, this.action});

  factory _$_Province.fromJson(Map<String, dynamic> json) =>
      _$$_ProvinceFromJson(json);

  @override
  final String? provCode;
  @override
  final String? provinsi;
  @override
  final String? action;

  @override
  String toString() {
    return 'Province(provCode: $provCode, provinsi: $provinsi, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Province &&
            (identical(other.provCode, provCode) ||
                other.provCode == provCode) &&
            (identical(other.provinsi, provinsi) ||
                other.provinsi == provinsi) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, provCode, provinsi, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProvinceCopyWith<_$_Province> get copyWith =>
      __$$_ProvinceCopyWithImpl<_$_Province>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProvinceToJson(
      this,
    );
  }
}

abstract class _Province implements Province {
  const factory _Province(
      {final String? provCode,
      final String? provinsi,
      final String? action}) = _$_Province;

  factory _Province.fromJson(Map<String, dynamic> json) = _$_Province.fromJson;

  @override
  String? get provCode;
  @override
  String? get provinsi;
  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$_ProvinceCopyWith<_$_Province> get copyWith =>
      throw _privateConstructorUsedError;
}

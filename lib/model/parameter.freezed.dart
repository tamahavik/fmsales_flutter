// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Parameter _$ParameterFromJson(Map<String, dynamic> json) {
  return _Parameter.fromJson(json);
}

/// @nodoc
mixin _$Parameter {
  String? get id => throw _privateConstructorUsedError;
  int? get version => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get satuan => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParameterCopyWith<Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParameterCopyWith<$Res> {
  factory $ParameterCopyWith(Parameter value, $Res Function(Parameter) then) =
      _$ParameterCopyWithImpl<$Res, Parameter>;
  @useResult
  $Res call(
      {String? id,
      int? version,
      String? startDate,
      String? endDate,
      String? name,
      String? value,
      String? satuan,
      String? description});
}

/// @nodoc
class _$ParameterCopyWithImpl<$Res, $Val extends Parameter>
    implements $ParameterCopyWith<$Res> {
  _$ParameterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? satuan = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      satuan: freezed == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParameterCopyWith<$Res> implements $ParameterCopyWith<$Res> {
  factory _$$_ParameterCopyWith(
          _$_Parameter value, $Res Function(_$_Parameter) then) =
      __$$_ParameterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? version,
      String? startDate,
      String? endDate,
      String? name,
      String? value,
      String? satuan,
      String? description});
}

/// @nodoc
class __$$_ParameterCopyWithImpl<$Res>
    extends _$ParameterCopyWithImpl<$Res, _$_Parameter>
    implements _$$_ParameterCopyWith<$Res> {
  __$$_ParameterCopyWithImpl(
      _$_Parameter _value, $Res Function(_$_Parameter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? version = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? satuan = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Parameter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      satuan: freezed == satuan
          ? _value.satuan
          : satuan // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Parameter implements _Parameter {
  const _$_Parameter(
      {this.id,
      this.version,
      this.startDate,
      this.endDate,
      this.name,
      this.value,
      this.satuan,
      this.description});

  factory _$_Parameter.fromJson(Map<String, dynamic> json) =>
      _$$_ParameterFromJson(json);

  @override
  final String? id;
  @override
  final int? version;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final String? name;
  @override
  final String? value;
  @override
  final String? satuan;
  @override
  final String? description;

  @override
  String toString() {
    return 'Parameter(id: $id, version: $version, startDate: $startDate, endDate: $endDate, name: $name, value: $value, satuan: $satuan, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parameter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.satuan, satuan) || other.satuan == satuan) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, version, startDate, endDate,
      name, value, satuan, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParameterCopyWith<_$_Parameter> get copyWith =>
      __$$_ParameterCopyWithImpl<_$_Parameter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParameterToJson(
      this,
    );
  }
}

abstract class _Parameter implements Parameter {
  const factory _Parameter(
      {final String? id,
      final int? version,
      final String? startDate,
      final String? endDate,
      final String? name,
      final String? value,
      final String? satuan,
      final String? description}) = _$_Parameter;

  factory _Parameter.fromJson(Map<String, dynamic> json) =
      _$_Parameter.fromJson;

  @override
  String? get id;
  @override
  int? get version;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String? get name;
  @override
  String? get value;
  @override
  String? get satuan;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_ParameterCopyWith<_$_Parameter> get copyWith =>
      throw _privateConstructorUsedError;
}

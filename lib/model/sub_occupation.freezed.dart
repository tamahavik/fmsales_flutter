// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_occupation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubOccupation _$SubOccupationFromJson(Map<String, dynamic> json) {
  return _SubOccupation.fromJson(json);
}

/// @nodoc
mixin _$SubOccupation {
  String? get occuSubCode => throw _privateConstructorUsedError;
  String? get occuSubDesc => throw _privateConstructorUsedError;
  String? get visible => throw _privateConstructorUsedError;
  String? get occuCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubOccupationCopyWith<SubOccupation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubOccupationCopyWith<$Res> {
  factory $SubOccupationCopyWith(
          SubOccupation value, $Res Function(SubOccupation) then) =
      _$SubOccupationCopyWithImpl<$Res, SubOccupation>;
  @useResult
  $Res call(
      {String? occuSubCode,
      String? occuSubDesc,
      String? visible,
      String? occuCode});
}

/// @nodoc
class _$SubOccupationCopyWithImpl<$Res, $Val extends SubOccupation>
    implements $SubOccupationCopyWith<$Res> {
  _$SubOccupationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occuSubCode = freezed,
    Object? occuSubDesc = freezed,
    Object? visible = freezed,
    Object? occuCode = freezed,
  }) {
    return _then(_value.copyWith(
      occuSubCode: freezed == occuSubCode
          ? _value.occuSubCode
          : occuSubCode // ignore: cast_nullable_to_non_nullable
              as String?,
      occuSubDesc: freezed == occuSubDesc
          ? _value.occuSubDesc
          : occuSubDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as String?,
      occuCode: freezed == occuCode
          ? _value.occuCode
          : occuCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubOccupationCopyWith<$Res>
    implements $SubOccupationCopyWith<$Res> {
  factory _$$_SubOccupationCopyWith(
          _$_SubOccupation value, $Res Function(_$_SubOccupation) then) =
      __$$_SubOccupationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? occuSubCode,
      String? occuSubDesc,
      String? visible,
      String? occuCode});
}

/// @nodoc
class __$$_SubOccupationCopyWithImpl<$Res>
    extends _$SubOccupationCopyWithImpl<$Res, _$_SubOccupation>
    implements _$$_SubOccupationCopyWith<$Res> {
  __$$_SubOccupationCopyWithImpl(
      _$_SubOccupation _value, $Res Function(_$_SubOccupation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occuSubCode = freezed,
    Object? occuSubDesc = freezed,
    Object? visible = freezed,
    Object? occuCode = freezed,
  }) {
    return _then(_$_SubOccupation(
      occuSubCode: freezed == occuSubCode
          ? _value.occuSubCode
          : occuSubCode // ignore: cast_nullable_to_non_nullable
              as String?,
      occuSubDesc: freezed == occuSubDesc
          ? _value.occuSubDesc
          : occuSubDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as String?,
      occuCode: freezed == occuCode
          ? _value.occuCode
          : occuCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubOccupation implements _SubOccupation {
  const _$_SubOccupation(
      {this.occuSubCode, this.occuSubDesc, this.visible, this.occuCode});

  factory _$_SubOccupation.fromJson(Map<String, dynamic> json) =>
      _$$_SubOccupationFromJson(json);

  @override
  final String? occuSubCode;
  @override
  final String? occuSubDesc;
  @override
  final String? visible;
  @override
  final String? occuCode;

  @override
  String toString() {
    return 'SubOccupation(occuSubCode: $occuSubCode, occuSubDesc: $occuSubDesc, visible: $visible, occuCode: $occuCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubOccupation &&
            (identical(other.occuSubCode, occuSubCode) ||
                other.occuSubCode == occuSubCode) &&
            (identical(other.occuSubDesc, occuSubDesc) ||
                other.occuSubDesc == occuSubDesc) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.occuCode, occuCode) ||
                other.occuCode == occuCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, occuSubCode, occuSubDesc, visible, occuCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubOccupationCopyWith<_$_SubOccupation> get copyWith =>
      __$$_SubOccupationCopyWithImpl<_$_SubOccupation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubOccupationToJson(
      this,
    );
  }
}

abstract class _SubOccupation implements SubOccupation {
  const factory _SubOccupation(
      {final String? occuSubCode,
      final String? occuSubDesc,
      final String? visible,
      final String? occuCode}) = _$_SubOccupation;

  factory _SubOccupation.fromJson(Map<String, dynamic> json) =
      _$_SubOccupation.fromJson;

  @override
  String? get occuSubCode;
  @override
  String? get occuSubDesc;
  @override
  String? get visible;
  @override
  String? get occuCode;
  @override
  @JsonKey(ignore: true)
  _$$_SubOccupationCopyWith<_$_SubOccupation> get copyWith =>
      throw _privateConstructorUsedError;
}

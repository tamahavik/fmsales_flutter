// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Occupation _$OccupationFromJson(Map<String, dynamic> json) {
  return _Occupation.fromJson(json);
}

/// @nodoc
mixin _$Occupation {
  String? get occuCode => throw _privateConstructorUsedError;
  String? get occuDesc => throw _privateConstructorUsedError;
  String? get visible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupationCopyWith<Occupation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupationCopyWith<$Res> {
  factory $OccupationCopyWith(
          Occupation value, $Res Function(Occupation) then) =
      _$OccupationCopyWithImpl<$Res, Occupation>;
  @useResult
  $Res call({String? occuCode, String? occuDesc, String? visible});
}

/// @nodoc
class _$OccupationCopyWithImpl<$Res, $Val extends Occupation>
    implements $OccupationCopyWith<$Res> {
  _$OccupationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occuCode = freezed,
    Object? occuDesc = freezed,
    Object? visible = freezed,
  }) {
    return _then(_value.copyWith(
      occuCode: freezed == occuCode
          ? _value.occuCode
          : occuCode // ignore: cast_nullable_to_non_nullable
              as String?,
      occuDesc: freezed == occuDesc
          ? _value.occuDesc
          : occuDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OccupationCopyWith<$Res>
    implements $OccupationCopyWith<$Res> {
  factory _$$_OccupationCopyWith(
          _$_Occupation value, $Res Function(_$_Occupation) then) =
      __$$_OccupationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? occuCode, String? occuDesc, String? visible});
}

/// @nodoc
class __$$_OccupationCopyWithImpl<$Res>
    extends _$OccupationCopyWithImpl<$Res, _$_Occupation>
    implements _$$_OccupationCopyWith<$Res> {
  __$$_OccupationCopyWithImpl(
      _$_Occupation _value, $Res Function(_$_Occupation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? occuCode = freezed,
    Object? occuDesc = freezed,
    Object? visible = freezed,
  }) {
    return _then(_$_Occupation(
      occuCode: freezed == occuCode
          ? _value.occuCode
          : occuCode // ignore: cast_nullable_to_non_nullable
              as String?,
      occuDesc: freezed == occuDesc
          ? _value.occuDesc
          : occuDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      visible: freezed == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Occupation implements _Occupation {
  const _$_Occupation({this.occuCode, this.occuDesc, this.visible});

  factory _$_Occupation.fromJson(Map<String, dynamic> json) =>
      _$$_OccupationFromJson(json);

  @override
  final String? occuCode;
  @override
  final String? occuDesc;
  @override
  final String? visible;

  @override
  String toString() {
    return 'Occupation(occuCode: $occuCode, occuDesc: $occuDesc, visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Occupation &&
            (identical(other.occuCode, occuCode) ||
                other.occuCode == occuCode) &&
            (identical(other.occuDesc, occuDesc) ||
                other.occuDesc == occuDesc) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, occuCode, occuDesc, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OccupationCopyWith<_$_Occupation> get copyWith =>
      __$$_OccupationCopyWithImpl<_$_Occupation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OccupationToJson(
      this,
    );
  }
}

abstract class _Occupation implements Occupation {
  const factory _Occupation(
      {final String? occuCode,
      final String? occuDesc,
      final String? visible}) = _$_Occupation;

  factory _Occupation.fromJson(Map<String, dynamic> json) =
      _$_Occupation.fromJson;

  @override
  String? get occuCode;
  @override
  String? get occuDesc;
  @override
  String? get visible;
  @override
  @JsonKey(ignore: true)
  _$$_OccupationCopyWith<_$_Occupation> get copyWith =>
      throw _privateConstructorUsedError;
}

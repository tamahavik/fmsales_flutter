// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeSetup _$TimeSetupFromJson(Map<String, dynamic> json) {
  return _TimeSetup.fromJson(json);
}

/// @nodoc
mixin _$TimeSetup {
  String? get lob => throw _privateConstructorUsedError;
  int? get endHour => throw _privateConstructorUsedError;
  int? get saturday => throw _privateConstructorUsedError;
  int? get startHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSetupCopyWith<TimeSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSetupCopyWith<$Res> {
  factory $TimeSetupCopyWith(TimeSetup value, $Res Function(TimeSetup) then) =
      _$TimeSetupCopyWithImpl<$Res, TimeSetup>;
  @useResult
  $Res call({String? lob, int? endHour, int? saturday, int? startHour});
}

/// @nodoc
class _$TimeSetupCopyWithImpl<$Res, $Val extends TimeSetup>
    implements $TimeSetupCopyWith<$Res> {
  _$TimeSetupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lob = freezed,
    Object? endHour = freezed,
    Object? saturday = freezed,
    Object? startHour = freezed,
  }) {
    return _then(_value.copyWith(
      lob: freezed == lob
          ? _value.lob
          : lob // ignore: cast_nullable_to_non_nullable
              as String?,
      endHour: freezed == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int?,
      saturday: freezed == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as int?,
      startHour: freezed == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimeSetupCopyWith<$Res> implements $TimeSetupCopyWith<$Res> {
  factory _$$_TimeSetupCopyWith(
          _$_TimeSetup value, $Res Function(_$_TimeSetup) then) =
      __$$_TimeSetupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lob, int? endHour, int? saturday, int? startHour});
}

/// @nodoc
class __$$_TimeSetupCopyWithImpl<$Res>
    extends _$TimeSetupCopyWithImpl<$Res, _$_TimeSetup>
    implements _$$_TimeSetupCopyWith<$Res> {
  __$$_TimeSetupCopyWithImpl(
      _$_TimeSetup _value, $Res Function(_$_TimeSetup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lob = freezed,
    Object? endHour = freezed,
    Object? saturday = freezed,
    Object? startHour = freezed,
  }) {
    return _then(_$_TimeSetup(
      lob: freezed == lob
          ? _value.lob
          : lob // ignore: cast_nullable_to_non_nullable
              as String?,
      endHour: freezed == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int?,
      saturday: freezed == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as int?,
      startHour: freezed == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeSetup implements _TimeSetup {
  const _$_TimeSetup({this.lob, this.endHour, this.saturday, this.startHour});

  factory _$_TimeSetup.fromJson(Map<String, dynamic> json) =>
      _$$_TimeSetupFromJson(json);

  @override
  final String? lob;
  @override
  final int? endHour;
  @override
  final int? saturday;
  @override
  final int? startHour;

  @override
  String toString() {
    return 'TimeSetup(lob: $lob, endHour: $endHour, saturday: $saturday, startHour: $startHour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeSetup &&
            (identical(other.lob, lob) || other.lob == lob) &&
            (identical(other.endHour, endHour) || other.endHour == endHour) &&
            (identical(other.saturday, saturday) ||
                other.saturday == saturday) &&
            (identical(other.startHour, startHour) ||
                other.startHour == startHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lob, endHour, saturday, startHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeSetupCopyWith<_$_TimeSetup> get copyWith =>
      __$$_TimeSetupCopyWithImpl<_$_TimeSetup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeSetupToJson(
      this,
    );
  }
}

abstract class _TimeSetup implements TimeSetup {
  const factory _TimeSetup(
      {final String? lob,
      final int? endHour,
      final int? saturday,
      final int? startHour}) = _$_TimeSetup;

  factory _TimeSetup.fromJson(Map<String, dynamic> json) =
      _$_TimeSetup.fromJson;

  @override
  String? get lob;
  @override
  int? get endHour;
  @override
  int? get saturday;
  @override
  int? get startHour;
  @override
  @JsonKey(ignore: true)
  _$$_TimeSetupCopyWith<_$_TimeSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

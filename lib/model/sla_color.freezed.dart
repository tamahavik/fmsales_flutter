// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sla_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SlaColor _$SlaColorFromJson(Map<String, dynamic> json) {
  return _SlaColor.fromJson(json);
}

/// @nodoc
mixin _$SlaColor {
  String? get id => throw _privateConstructorUsedError;
  String? get sourceLeads => throw _privateConstructorUsedError;
  int? get timeStart => throw _privateConstructorUsedError;
  int? get timeEnd => throw _privateConstructorUsedError;
  String? get colorCode => throw _privateConstructorUsedError;
  String? get sourceIdVisum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SlaColorCopyWith<SlaColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlaColorCopyWith<$Res> {
  factory $SlaColorCopyWith(SlaColor value, $Res Function(SlaColor) then) =
      _$SlaColorCopyWithImpl<$Res, SlaColor>;
  @useResult
  $Res call(
      {String? id,
      String? sourceLeads,
      int? timeStart,
      int? timeEnd,
      String? colorCode,
      String? sourceIdVisum});
}

/// @nodoc
class _$SlaColorCopyWithImpl<$Res, $Val extends SlaColor>
    implements $SlaColorCopyWith<$Res> {
  _$SlaColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sourceLeads = freezed,
    Object? timeStart = freezed,
    Object? timeEnd = freezed,
    Object? colorCode = freezed,
    Object? sourceIdVisum = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceLeads: freezed == sourceLeads
          ? _value.sourceLeads
          : sourceLeads // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as int?,
      timeEnd: freezed == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdVisum: freezed == sourceIdVisum
          ? _value.sourceIdVisum
          : sourceIdVisum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlaColorCopyWith<$Res> implements $SlaColorCopyWith<$Res> {
  factory _$$_SlaColorCopyWith(
          _$_SlaColor value, $Res Function(_$_SlaColor) then) =
      __$$_SlaColorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? sourceLeads,
      int? timeStart,
      int? timeEnd,
      String? colorCode,
      String? sourceIdVisum});
}

/// @nodoc
class __$$_SlaColorCopyWithImpl<$Res>
    extends _$SlaColorCopyWithImpl<$Res, _$_SlaColor>
    implements _$$_SlaColorCopyWith<$Res> {
  __$$_SlaColorCopyWithImpl(
      _$_SlaColor _value, $Res Function(_$_SlaColor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sourceLeads = freezed,
    Object? timeStart = freezed,
    Object? timeEnd = freezed,
    Object? colorCode = freezed,
    Object? sourceIdVisum = freezed,
  }) {
    return _then(_$_SlaColor(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceLeads: freezed == sourceLeads
          ? _value.sourceLeads
          : sourceLeads // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as int?,
      timeEnd: freezed == timeEnd
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIdVisum: freezed == sourceIdVisum
          ? _value.sourceIdVisum
          : sourceIdVisum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SlaColor implements _SlaColor {
  const _$_SlaColor(
      {this.id,
      this.sourceLeads,
      this.timeStart,
      this.timeEnd,
      this.colorCode,
      this.sourceIdVisum});

  factory _$_SlaColor.fromJson(Map<String, dynamic> json) =>
      _$$_SlaColorFromJson(json);

  @override
  final String? id;
  @override
  final String? sourceLeads;
  @override
  final int? timeStart;
  @override
  final int? timeEnd;
  @override
  final String? colorCode;
  @override
  final String? sourceIdVisum;

  @override
  String toString() {
    return 'SlaColor(id: $id, sourceLeads: $sourceLeads, timeStart: $timeStart, timeEnd: $timeEnd, colorCode: $colorCode, sourceIdVisum: $sourceIdVisum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlaColor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceLeads, sourceLeads) ||
                other.sourceLeads == sourceLeads) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeEnd, timeEnd) || other.timeEnd == timeEnd) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.sourceIdVisum, sourceIdVisum) ||
                other.sourceIdVisum == sourceIdVisum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sourceLeads, timeStart,
      timeEnd, colorCode, sourceIdVisum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlaColorCopyWith<_$_SlaColor> get copyWith =>
      __$$_SlaColorCopyWithImpl<_$_SlaColor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SlaColorToJson(
      this,
    );
  }
}

abstract class _SlaColor implements SlaColor {
  const factory _SlaColor(
      {final String? id,
      final String? sourceLeads,
      final int? timeStart,
      final int? timeEnd,
      final String? colorCode,
      final String? sourceIdVisum}) = _$_SlaColor;

  factory _SlaColor.fromJson(Map<String, dynamic> json) = _$_SlaColor.fromJson;

  @override
  String? get id;
  @override
  String? get sourceLeads;
  @override
  int? get timeStart;
  @override
  int? get timeEnd;
  @override
  String? get colorCode;
  @override
  String? get sourceIdVisum;
  @override
  @JsonKey(ignore: true)
  _$$_SlaColorCopyWith<_$_SlaColor> get copyWith =>
      throw _privateConstructorUsedError;
}

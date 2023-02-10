// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'priority_leads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PriorityLeads _$PriorityLeadsFromJson(Map<String, dynamic> json) {
  return _PriorityLeads.fromJson(json);
}

/// @nodoc
mixin _$PriorityLeads {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get refCode => throw _privateConstructorUsedError;
  int? get limitDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriorityLeadsCopyWith<PriorityLeads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityLeadsCopyWith<$Res> {
  factory $PriorityLeadsCopyWith(
          PriorityLeads value, $Res Function(PriorityLeads) then) =
      _$PriorityLeadsCopyWithImpl<$Res, PriorityLeads>;
  @useResult
  $Res call({int? id, String? name, String? refCode, int? limitDate});
}

/// @nodoc
class _$PriorityLeadsCopyWithImpl<$Res, $Val extends PriorityLeads>
    implements $PriorityLeadsCopyWith<$Res> {
  _$PriorityLeadsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? refCode = freezed,
    Object? limitDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      limitDate: freezed == limitDate
          ? _value.limitDate
          : limitDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriorityLeadsCopyWith<$Res>
    implements $PriorityLeadsCopyWith<$Res> {
  factory _$$_PriorityLeadsCopyWith(
          _$_PriorityLeads value, $Res Function(_$_PriorityLeads) then) =
      __$$_PriorityLeadsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? refCode, int? limitDate});
}

/// @nodoc
class __$$_PriorityLeadsCopyWithImpl<$Res>
    extends _$PriorityLeadsCopyWithImpl<$Res, _$_PriorityLeads>
    implements _$$_PriorityLeadsCopyWith<$Res> {
  __$$_PriorityLeadsCopyWithImpl(
      _$_PriorityLeads _value, $Res Function(_$_PriorityLeads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? refCode = freezed,
    Object? limitDate = freezed,
  }) {
    return _then(_$_PriorityLeads(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      limitDate: freezed == limitDate
          ? _value.limitDate
          : limitDate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PriorityLeads implements _PriorityLeads {
  const _$_PriorityLeads({this.id, this.name, this.refCode, this.limitDate});

  factory _$_PriorityLeads.fromJson(Map<String, dynamic> json) =>
      _$$_PriorityLeadsFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? refCode;
  @override
  final int? limitDate;

  @override
  String toString() {
    return 'PriorityLeads(id: $id, name: $name, refCode: $refCode, limitDate: $limitDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriorityLeads &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.limitDate, limitDate) ||
                other.limitDate == limitDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, refCode, limitDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriorityLeadsCopyWith<_$_PriorityLeads> get copyWith =>
      __$$_PriorityLeadsCopyWithImpl<_$_PriorityLeads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PriorityLeadsToJson(
      this,
    );
  }
}

abstract class _PriorityLeads implements PriorityLeads {
  const factory _PriorityLeads(
      {final int? id,
      final String? name,
      final String? refCode,
      final int? limitDate}) = _$_PriorityLeads;

  factory _PriorityLeads.fromJson(Map<String, dynamic> json) =
      _$_PriorityLeads.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get refCode;
  @override
  int? get limitDate;
  @override
  @JsonKey(ignore: true)
  _$$_PriorityLeadsCopyWith<_$_PriorityLeads> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_leads_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryLeadsHeader _$HistoryLeadsHeaderFromJson(Map<String, dynamic> json) {
  return _HistoryLeadsHeader.fromJson(json);
}

/// @nodoc
mixin _$HistoryLeadsHeader {
  String? get modificationDate => throw _privateConstructorUsedError;
  String? get followUpResult => throw _privateConstructorUsedError;
  HistoryLeadsDetail? get leads => throw _privateConstructorUsedError;
  String? get leadsOrderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryLeadsHeaderCopyWith<HistoryLeadsHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryLeadsHeaderCopyWith<$Res> {
  factory $HistoryLeadsHeaderCopyWith(
          HistoryLeadsHeader value, $Res Function(HistoryLeadsHeader) then) =
      _$HistoryLeadsHeaderCopyWithImpl<$Res, HistoryLeadsHeader>;
  @useResult
  $Res call(
      {String? modificationDate,
      String? followUpResult,
      HistoryLeadsDetail? leads,
      String? leadsOrderId});

  $HistoryLeadsDetailCopyWith<$Res>? get leads;
}

/// @nodoc
class _$HistoryLeadsHeaderCopyWithImpl<$Res, $Val extends HistoryLeadsHeader>
    implements $HistoryLeadsHeaderCopyWith<$Res> {
  _$HistoryLeadsHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modificationDate = freezed,
    Object? followUpResult = freezed,
    Object? leads = freezed,
    Object? leadsOrderId = freezed,
  }) {
    return _then(_value.copyWith(
      modificationDate: freezed == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpResult: freezed == followUpResult
          ? _value.followUpResult
          : followUpResult // ignore: cast_nullable_to_non_nullable
              as String?,
      leads: freezed == leads
          ? _value.leads
          : leads // ignore: cast_nullable_to_non_nullable
              as HistoryLeadsDetail?,
      leadsOrderId: freezed == leadsOrderId
          ? _value.leadsOrderId
          : leadsOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryLeadsDetailCopyWith<$Res>? get leads {
    if (_value.leads == null) {
      return null;
    }

    return $HistoryLeadsDetailCopyWith<$Res>(_value.leads!, (value) {
      return _then(_value.copyWith(leads: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HistoryLeadsHeaderCopyWith<$Res>
    implements $HistoryLeadsHeaderCopyWith<$Res> {
  factory _$$_HistoryLeadsHeaderCopyWith(_$_HistoryLeadsHeader value,
          $Res Function(_$_HistoryLeadsHeader) then) =
      __$$_HistoryLeadsHeaderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? modificationDate,
      String? followUpResult,
      HistoryLeadsDetail? leads,
      String? leadsOrderId});

  @override
  $HistoryLeadsDetailCopyWith<$Res>? get leads;
}

/// @nodoc
class __$$_HistoryLeadsHeaderCopyWithImpl<$Res>
    extends _$HistoryLeadsHeaderCopyWithImpl<$Res, _$_HistoryLeadsHeader>
    implements _$$_HistoryLeadsHeaderCopyWith<$Res> {
  __$$_HistoryLeadsHeaderCopyWithImpl(
      _$_HistoryLeadsHeader _value, $Res Function(_$_HistoryLeadsHeader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modificationDate = freezed,
    Object? followUpResult = freezed,
    Object? leads = freezed,
    Object? leadsOrderId = freezed,
  }) {
    return _then(_$_HistoryLeadsHeader(
      modificationDate: freezed == modificationDate
          ? _value.modificationDate
          : modificationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      followUpResult: freezed == followUpResult
          ? _value.followUpResult
          : followUpResult // ignore: cast_nullable_to_non_nullable
              as String?,
      leads: freezed == leads
          ? _value.leads
          : leads // ignore: cast_nullable_to_non_nullable
              as HistoryLeadsDetail?,
      leadsOrderId: freezed == leadsOrderId
          ? _value.leadsOrderId
          : leadsOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryLeadsHeader implements _HistoryLeadsHeader {
  const _$_HistoryLeadsHeader(
      {this.modificationDate,
      this.followUpResult,
      this.leads,
      this.leadsOrderId});

  factory _$_HistoryLeadsHeader.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryLeadsHeaderFromJson(json);

  @override
  final String? modificationDate;
  @override
  final String? followUpResult;
  @override
  final HistoryLeadsDetail? leads;
  @override
  final String? leadsOrderId;

  @override
  String toString() {
    return 'HistoryLeadsHeader(modificationDate: $modificationDate, followUpResult: $followUpResult, leads: $leads, leadsOrderId: $leadsOrderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryLeadsHeader &&
            (identical(other.modificationDate, modificationDate) ||
                other.modificationDate == modificationDate) &&
            (identical(other.followUpResult, followUpResult) ||
                other.followUpResult == followUpResult) &&
            (identical(other.leads, leads) || other.leads == leads) &&
            (identical(other.leadsOrderId, leadsOrderId) ||
                other.leadsOrderId == leadsOrderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, modificationDate, followUpResult, leads, leadsOrderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryLeadsHeaderCopyWith<_$_HistoryLeadsHeader> get copyWith =>
      __$$_HistoryLeadsHeaderCopyWithImpl<_$_HistoryLeadsHeader>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryLeadsHeaderToJson(
      this,
    );
  }
}

abstract class _HistoryLeadsHeader implements HistoryLeadsHeader {
  const factory _HistoryLeadsHeader(
      {final String? modificationDate,
      final String? followUpResult,
      final HistoryLeadsDetail? leads,
      final String? leadsOrderId}) = _$_HistoryLeadsHeader;

  factory _HistoryLeadsHeader.fromJson(Map<String, dynamic> json) =
      _$_HistoryLeadsHeader.fromJson;

  @override
  String? get modificationDate;
  @override
  String? get followUpResult;
  @override
  HistoryLeadsDetail? get leads;
  @override
  String? get leadsOrderId;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryLeadsHeaderCopyWith<_$_HistoryLeadsHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

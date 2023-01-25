// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_leads_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryLeadsDetail _$HistoryLeadsDetailFromJson(Map<String, dynamic> json) {
  return _HistoryLeadsDetail.fromJson(json);
}

/// @nodoc
mixin _$HistoryLeadsDetail {
  String? get customerName => throw _privateConstructorUsedError;
  String? get mobileNo01 => throw _privateConstructorUsedError;
  String? get customerNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryLeadsDetailCopyWith<HistoryLeadsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryLeadsDetailCopyWith<$Res> {
  factory $HistoryLeadsDetailCopyWith(
          HistoryLeadsDetail value, $Res Function(HistoryLeadsDetail) then) =
      _$HistoryLeadsDetailCopyWithImpl<$Res, HistoryLeadsDetail>;
  @useResult
  $Res call({String? customerName, String? mobileNo01, String? customerNo});
}

/// @nodoc
class _$HistoryLeadsDetailCopyWithImpl<$Res, $Val extends HistoryLeadsDetail>
    implements $HistoryLeadsDetailCopyWith<$Res> {
  _$HistoryLeadsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNo01 = freezed,
    Object? customerNo = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo01: freezed == mobileNo01
          ? _value.mobileNo01
          : mobileNo01 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNo: freezed == customerNo
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistoryLeadsDetailCopyWith<$Res>
    implements $HistoryLeadsDetailCopyWith<$Res> {
  factory _$$_HistoryLeadsDetailCopyWith(_$_HistoryLeadsDetail value,
          $Res Function(_$_HistoryLeadsDetail) then) =
      __$$_HistoryLeadsDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? customerName, String? mobileNo01, String? customerNo});
}

/// @nodoc
class __$$_HistoryLeadsDetailCopyWithImpl<$Res>
    extends _$HistoryLeadsDetailCopyWithImpl<$Res, _$_HistoryLeadsDetail>
    implements _$$_HistoryLeadsDetailCopyWith<$Res> {
  __$$_HistoryLeadsDetailCopyWithImpl(
      _$_HistoryLeadsDetail _value, $Res Function(_$_HistoryLeadsDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNo01 = freezed,
    Object? customerNo = freezed,
  }) {
    return _then(_$_HistoryLeadsDetail(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo01: freezed == mobileNo01
          ? _value.mobileNo01
          : mobileNo01 // ignore: cast_nullable_to_non_nullable
              as String?,
      customerNo: freezed == customerNo
          ? _value.customerNo
          : customerNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryLeadsDetail implements _HistoryLeadsDetail {
  const _$_HistoryLeadsDetail(
      {this.customerName, this.mobileNo01, this.customerNo});

  factory _$_HistoryLeadsDetail.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryLeadsDetailFromJson(json);

  @override
  final String? customerName;
  @override
  final String? mobileNo01;
  @override
  final String? customerNo;

  @override
  String toString() {
    return 'HistoryLeadsDetail(customerName: $customerName, mobileNo01: $mobileNo01, customerNo: $customerNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryLeadsDetail &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.mobileNo01, mobileNo01) ||
                other.mobileNo01 == mobileNo01) &&
            (identical(other.customerNo, customerNo) ||
                other.customerNo == customerNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, customerName, mobileNo01, customerNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryLeadsDetailCopyWith<_$_HistoryLeadsDetail> get copyWith =>
      __$$_HistoryLeadsDetailCopyWithImpl<_$_HistoryLeadsDetail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryLeadsDetailToJson(
      this,
    );
  }
}

abstract class _HistoryLeadsDetail implements HistoryLeadsDetail {
  const factory _HistoryLeadsDetail(
      {final String? customerName,
      final String? mobileNo01,
      final String? customerNo}) = _$_HistoryLeadsDetail;

  factory _HistoryLeadsDetail.fromJson(Map<String, dynamic> json) =
      _$_HistoryLeadsDetail.fromJson;

  @override
  String? get customerName;
  @override
  String? get mobileNo01;
  @override
  String? get customerNo;
  @override
  @JsonKey(ignore: true)
  _$$_HistoryLeadsDetailCopyWith<_$_HistoryLeadsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

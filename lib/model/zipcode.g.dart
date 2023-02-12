// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zipcode.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetZipCodeCollection on Isar {
  IsarCollection<ZipCode> get zipCodes => this.collection();
}

const ZipCodeSchema = CollectionSchema(
  name: r'ZipCode',
  id: 2535663023546343630,
  properties: {
    r'action': PropertySchema(
      id: 0,
      name: r'action',
      type: IsarType.string,
    ),
    r'cityCode': PropertySchema(
      id: 1,
      name: r'cityCode',
      type: IsarType.string,
    ),
    r'createBy': PropertySchema(
      id: 2,
      name: r'createBy',
      type: IsarType.string,
    ),
    r'createDate': PropertySchema(
      id: 3,
      name: r'createDate',
      type: IsarType.long,
    ),
    r'kecCode': PropertySchema(
      id: 4,
      name: r'kecCode',
      type: IsarType.string,
    ),
    r'kelCode': PropertySchema(
      id: 5,
      name: r'kelCode',
      type: IsarType.string,
    ),
    r'provCode': PropertySchema(
      id: 6,
      name: r'provCode',
      type: IsarType.string,
    ),
    r'subZipCode': PropertySchema(
      id: 7,
      name: r'subZipCode',
      type: IsarType.string,
    ),
    r'updateBy': PropertySchema(
      id: 8,
      name: r'updateBy',
      type: IsarType.string,
    ),
    r'updateDate': PropertySchema(
      id: 9,
      name: r'updateDate',
      type: IsarType.long,
    ),
    r'zipCode': PropertySchema(
      id: 10,
      name: r'zipCode',
      type: IsarType.string,
    ),
    r'zipDesc': PropertySchema(
      id: 11,
      name: r'zipDesc',
      type: IsarType.string,
    )
  },
  estimateSize: _zipCodeEstimateSize,
  serialize: _zipCodeSerialize,
  deserialize: _zipCodeDeserialize,
  deserializeProp: _zipCodeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _zipCodeGetId,
  getLinks: _zipCodeGetLinks,
  attach: _zipCodeAttach,
  version: '3.0.5',
);

int _zipCodeEstimateSize(
  ZipCode object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.action;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cityCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.createBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kecCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kelCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.provCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subZipCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.updateBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.zipCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.zipDesc;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _zipCodeSerialize(
  ZipCode object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.action);
  writer.writeString(offsets[1], object.cityCode);
  writer.writeString(offsets[2], object.createBy);
  writer.writeLong(offsets[3], object.createDate);
  writer.writeString(offsets[4], object.kecCode);
  writer.writeString(offsets[5], object.kelCode);
  writer.writeString(offsets[6], object.provCode);
  writer.writeString(offsets[7], object.subZipCode);
  writer.writeString(offsets[8], object.updateBy);
  writer.writeLong(offsets[9], object.updateDate);
  writer.writeString(offsets[10], object.zipCode);
  writer.writeString(offsets[11], object.zipDesc);
}

ZipCode _zipCodeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ZipCode(
    reader.readStringOrNull(offsets[10]),
    reader.readStringOrNull(offsets[7]),
    reader.readStringOrNull(offsets[11]),
    reader.readStringOrNull(offsets[6]),
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[4]),
    reader.readStringOrNull(offsets[5]),
    reader.readStringOrNull(offsets[2]),
    reader.readLongOrNull(offsets[3]),
    reader.readStringOrNull(offsets[8]),
    reader.readLongOrNull(offsets[9]),
    reader.readStringOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _zipCodeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _zipCodeGetId(ZipCode object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _zipCodeGetLinks(ZipCode object) {
  return [];
}

void _zipCodeAttach(IsarCollection<dynamic> col, Id id, ZipCode object) {
  object.id = id;
}

extension ZipCodeQueryWhereSort on QueryBuilder<ZipCode, ZipCode, QWhere> {
  QueryBuilder<ZipCode, ZipCode, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ZipCodeQueryWhere on QueryBuilder<ZipCode, ZipCode, QWhereClause> {
  QueryBuilder<ZipCode, ZipCode, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ZipCodeQueryFilter
    on QueryBuilder<ZipCode, ZipCode, QFilterCondition> {
  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'action',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'action',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cityCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cityCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cityCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cityCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> cityCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cityCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createBy',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createBy',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createDate',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createDate',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createDateEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createDateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createDateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> createDateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kecCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kecCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kecCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kecCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kecCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kecCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kecCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kecCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kecCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kecCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kecCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kecCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kecCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kelCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kelCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kelCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kelCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kelCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kelCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kelCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kelCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kelCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kelCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kelCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> kelCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kelCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'provCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'provCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'provCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'provCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'provCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'provCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'provCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'provCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'provCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'provCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> provCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'provCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subZipCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subZipCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subZipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subZipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subZipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subZipCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subZipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subZipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subZipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subZipCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subZipCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> subZipCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subZipCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateBy',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateBy',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updateBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updateBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updateBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updateBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updateBy',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updateDate',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateDateEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateDateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateDateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> updateDateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'zipCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'zipCode',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'zipCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'zipCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'zipCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zipCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'zipCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'zipDesc',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'zipDesc',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zipDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'zipDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'zipDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'zipDesc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'zipDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'zipDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'zipDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'zipDesc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'zipDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterFilterCondition> zipDescIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'zipDesc',
        value: '',
      ));
    });
  }
}

extension ZipCodeQueryObject
    on QueryBuilder<ZipCode, ZipCode, QFilterCondition> {}

extension ZipCodeQueryLinks
    on QueryBuilder<ZipCode, ZipCode, QFilterCondition> {}

extension ZipCodeQuerySortBy on QueryBuilder<ZipCode, ZipCode, QSortBy> {
  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByCityCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByCityCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByCreateBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createBy', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByCreateByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createBy', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByCreateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByCreateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByKecCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByKecCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByKelCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByKelCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByProvCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByProvCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortBySubZipCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subZipCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortBySubZipCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subZipCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByUpdateBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBy', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByUpdateByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBy', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByZipCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByZipCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByZipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipDesc', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> sortByZipDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipDesc', Sort.desc);
    });
  }
}

extension ZipCodeQuerySortThenBy
    on QueryBuilder<ZipCode, ZipCode, QSortThenBy> {
  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByCityCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByCityCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByCreateBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createBy', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByCreateByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createBy', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByCreateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByCreateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createDate', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByKecCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByKecCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByKelCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByKelCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByProvCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByProvCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'provCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenBySubZipCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subZipCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenBySubZipCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subZipCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByUpdateBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBy', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByUpdateByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBy', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByUpdateDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateDate', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByZipCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByZipCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipCode', Sort.desc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByZipDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipDesc', Sort.asc);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QAfterSortBy> thenByZipDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'zipDesc', Sort.desc);
    });
  }
}

extension ZipCodeQueryWhereDistinct
    on QueryBuilder<ZipCode, ZipCode, QDistinct> {
  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByCityCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByCreateBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByCreateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createDate');
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByKecCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kecCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByKelCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kelCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByProvCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'provCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctBySubZipCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subZipCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByUpdateBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByUpdateDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateDate');
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByZipCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'zipCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ZipCode, ZipCode, QDistinct> distinctByZipDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'zipDesc', caseSensitive: caseSensitive);
    });
  }
}

extension ZipCodeQueryProperty
    on QueryBuilder<ZipCode, ZipCode, QQueryProperty> {
  QueryBuilder<ZipCode, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> cityCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityCode');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> createByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createBy');
    });
  }

  QueryBuilder<ZipCode, int?, QQueryOperations> createDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createDate');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> kecCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kecCode');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> kelCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kelCode');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> provCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'provCode');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> subZipCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subZipCode');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> updateByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateBy');
    });
  }

  QueryBuilder<ZipCode, int?, QQueryOperations> updateDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateDate');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> zipCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'zipCode');
    });
  }

  QueryBuilder<ZipCode, String?, QQueryOperations> zipDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'zipDesc');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZipCode _$ZipCodeFromJson(Map<String, dynamic> json) => ZipCode(
      json['zipCode'] as String?,
      json['subZipCode'] as String?,
      json['zipDesc'] as String?,
      json['provCode'] as String?,
      json['cityCode'] as String?,
      json['kecCode'] as String?,
      json['kelCode'] as String?,
      json['createBy'] as String?,
      json['createDate'] as int?,
      json['updateBy'] as String?,
      json['updateDate'] as int?,
      json['action'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$ZipCodeToJson(ZipCode instance) => <String, dynamic>{
      'id': instance.id,
      'zipCode': instance.zipCode,
      'subZipCode': instance.subZipCode,
      'zipDesc': instance.zipDesc,
      'provCode': instance.provCode,
      'cityCode': instance.cityCode,
      'kecCode': instance.kecCode,
      'kelCode': instance.kelCode,
      'createBy': instance.createBy,
      'createDate': instance.createDate,
      'updateBy': instance.updateBy,
      'updateDate': instance.updateDate,
      'action': instance.action,
    };

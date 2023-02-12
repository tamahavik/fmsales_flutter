// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kelurahan.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetKelurahanCollection on Isar {
  IsarCollection<Kelurahan> get kelurahans => this.collection();
}

const KelurahanSchema = CollectionSchema(
  name: r'Kelurahan',
  id: -3220645820147354101,
  properties: {
    r'action': PropertySchema(
      id: 0,
      name: r'action',
      type: IsarType.string,
    ),
    r'kecCode': PropertySchema(
      id: 1,
      name: r'kecCode',
      type: IsarType.string,
    ),
    r'kelCode': PropertySchema(
      id: 2,
      name: r'kelCode',
      type: IsarType.string,
    ),
    r'kelurahan': PropertySchema(
      id: 3,
      name: r'kelurahan',
      type: IsarType.string,
    )
  },
  estimateSize: _kelurahanEstimateSize,
  serialize: _kelurahanSerialize,
  deserialize: _kelurahanDeserialize,
  deserializeProp: _kelurahanDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _kelurahanGetId,
  getLinks: _kelurahanGetLinks,
  attach: _kelurahanAttach,
  version: '3.0.5',
);

int _kelurahanEstimateSize(
  Kelurahan object,
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
    final value = object.kelurahan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _kelurahanSerialize(
  Kelurahan object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.action);
  writer.writeString(offsets[1], object.kecCode);
  writer.writeString(offsets[2], object.kelCode);
  writer.writeString(offsets[3], object.kelurahan);
}

Kelurahan _kelurahanDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Kelurahan(
    reader.readStringOrNull(offsets[2]),
    reader.readStringOrNull(offsets[3]),
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _kelurahanDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _kelurahanGetId(Kelurahan object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _kelurahanGetLinks(Kelurahan object) {
  return [];
}

void _kelurahanAttach(IsarCollection<dynamic> col, Id id, Kelurahan object) {
  object.id = id;
}

extension KelurahanQueryWhereSort
    on QueryBuilder<Kelurahan, Kelurahan, QWhere> {
  QueryBuilder<Kelurahan, Kelurahan, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KelurahanQueryWhere
    on QueryBuilder<Kelurahan, Kelurahan, QWhereClause> {
  QueryBuilder<Kelurahan, Kelurahan, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterWhereClause> idBetween(
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

extension KelurahanQueryFilter
    on QueryBuilder<Kelurahan, Kelurahan, QFilterCondition> {
  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionEqualTo(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionGreaterThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionLessThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionBetween(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionStartsWith(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionEndsWith(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionContains(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionMatches(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kecCode',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kecCode',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeEqualTo(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeGreaterThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeLessThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeBetween(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeStartsWith(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeEndsWith(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeContains(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeMatches(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kecCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kecCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition>
      kecCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kecCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kelCode',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kelCode',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeEqualTo(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeGreaterThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeLessThan(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeBetween(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeStartsWith(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeEndsWith(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeContains(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeMatches(
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

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kelCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition>
      kelCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kelCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kelurahan',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition>
      kelurahanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kelurahan',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kelurahan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition>
      kelurahanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kelurahan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kelurahan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kelurahan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kelurahan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kelurahan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kelurahan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kelurahan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition> kelurahanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kelurahan',
        value: '',
      ));
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterFilterCondition>
      kelurahanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kelurahan',
        value: '',
      ));
    });
  }
}

extension KelurahanQueryObject
    on QueryBuilder<Kelurahan, Kelurahan, QFilterCondition> {}

extension KelurahanQueryLinks
    on QueryBuilder<Kelurahan, Kelurahan, QFilterCondition> {}

extension KelurahanQuerySortBy on QueryBuilder<Kelurahan, Kelurahan, QSortBy> {
  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByKecCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByKecCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByKelCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByKelCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByKelurahan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelurahan', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> sortByKelurahanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelurahan', Sort.desc);
    });
  }
}

extension KelurahanQuerySortThenBy
    on QueryBuilder<Kelurahan, Kelurahan, QSortThenBy> {
  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByKecCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByKecCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByKelCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByKelCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelCode', Sort.desc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByKelurahan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelurahan', Sort.asc);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QAfterSortBy> thenByKelurahanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kelurahan', Sort.desc);
    });
  }
}

extension KelurahanQueryWhereDistinct
    on QueryBuilder<Kelurahan, Kelurahan, QDistinct> {
  QueryBuilder<Kelurahan, Kelurahan, QDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QDistinct> distinctByKecCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kecCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QDistinct> distinctByKelCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kelCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kelurahan, Kelurahan, QDistinct> distinctByKelurahan(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kelurahan', caseSensitive: caseSensitive);
    });
  }
}

extension KelurahanQueryProperty
    on QueryBuilder<Kelurahan, Kelurahan, QQueryProperty> {
  QueryBuilder<Kelurahan, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Kelurahan, String?, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<Kelurahan, String?, QQueryOperations> kecCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kecCode');
    });
  }

  QueryBuilder<Kelurahan, String?, QQueryOperations> kelCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kelCode');
    });
  }

  QueryBuilder<Kelurahan, String?, QQueryOperations> kelurahanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kelurahan');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kelurahan _$KelurahanFromJson(Map<String, dynamic> json) => Kelurahan(
      json['kelCode'] as String?,
      json['kelurahan'] as String?,
      json['kecCode'] as String?,
      json['action'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$KelurahanToJson(Kelurahan instance) => <String, dynamic>{
      'id': instance.id,
      'kelCode': instance.kelCode,
      'kelurahan': instance.kelurahan,
      'kecCode': instance.kecCode,
      'action': instance.action,
    };

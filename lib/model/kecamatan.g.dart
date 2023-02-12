// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kecamatan.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetKecamatanCollection on Isar {
  IsarCollection<Kecamatan> get kecamatans => this.collection();
}

const KecamatanSchema = CollectionSchema(
  name: r'Kecamatan',
  id: -822864267105439759,
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
    r'kecCode': PropertySchema(
      id: 2,
      name: r'kecCode',
      type: IsarType.string,
    ),
    r'kecamatan': PropertySchema(
      id: 3,
      name: r'kecamatan',
      type: IsarType.string,
    )
  },
  estimateSize: _kecamatanEstimateSize,
  serialize: _kecamatanSerialize,
  deserialize: _kecamatanDeserialize,
  deserializeProp: _kecamatanDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _kecamatanGetId,
  getLinks: _kecamatanGetLinks,
  attach: _kecamatanAttach,
  version: '3.0.5',
);

int _kecamatanEstimateSize(
  Kecamatan object,
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
    final value = object.kecCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.kecamatan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _kecamatanSerialize(
  Kecamatan object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.action);
  writer.writeString(offsets[1], object.cityCode);
  writer.writeString(offsets[2], object.kecCode);
  writer.writeString(offsets[3], object.kecamatan);
}

Kecamatan _kecamatanDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Kecamatan(
    reader.readStringOrNull(offsets[2]),
    reader.readStringOrNull(offsets[3]),
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _kecamatanDeserializeProp<P>(
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

Id _kecamatanGetId(Kecamatan object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _kecamatanGetLinks(Kecamatan object) {
  return [];
}

void _kecamatanAttach(IsarCollection<dynamic> col, Id id, Kecamatan object) {
  object.id = id;
}

extension KecamatanQueryWhereSort
    on QueryBuilder<Kecamatan, Kecamatan, QWhere> {
  QueryBuilder<Kecamatan, Kecamatan, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KecamatanQueryWhere
    on QueryBuilder<Kecamatan, Kecamatan, QWhereClause> {
  QueryBuilder<Kecamatan, Kecamatan, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterWhereClause> idBetween(
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

extension KecamatanQueryFilter
    on QueryBuilder<Kecamatan, Kecamatan, QFilterCondition> {
  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'action',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionEqualTo(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionGreaterThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionLessThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionBetween(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionStartsWith(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionEndsWith(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionContains(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionMatches(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cityCode',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition>
      cityCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cityCode',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeEqualTo(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeGreaterThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeLessThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeBetween(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeStartsWith(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeEndsWith(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeContains(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeMatches(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> cityCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition>
      cityCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cityCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kecCode',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kecCode',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeEqualTo(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeGreaterThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeLessThan(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeBetween(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeStartsWith(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeEndsWith(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeContains(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeMatches(
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

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kecCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition>
      kecCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kecCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'kecamatan',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition>
      kecamatanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'kecamatan',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kecamatan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition>
      kecamatanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'kecamatan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'kecamatan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'kecamatan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'kecamatan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'kecamatan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'kecamatan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'kecamatan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition> kecamatanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'kecamatan',
        value: '',
      ));
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterFilterCondition>
      kecamatanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'kecamatan',
        value: '',
      ));
    });
  }
}

extension KecamatanQueryObject
    on QueryBuilder<Kecamatan, Kecamatan, QFilterCondition> {}

extension KecamatanQueryLinks
    on QueryBuilder<Kecamatan, Kecamatan, QFilterCondition> {}

extension KecamatanQuerySortBy on QueryBuilder<Kecamatan, Kecamatan, QSortBy> {
  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByCityCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByCityCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByKecCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByKecCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByKecamatan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecamatan', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> sortByKecamatanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecamatan', Sort.desc);
    });
  }
}

extension KecamatanQuerySortThenBy
    on QueryBuilder<Kecamatan, Kecamatan, QSortThenBy> {
  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByCityCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByCityCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityCode', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByKecCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByKecCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecCode', Sort.desc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByKecamatan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecamatan', Sort.asc);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QAfterSortBy> thenByKecamatanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'kecamatan', Sort.desc);
    });
  }
}

extension KecamatanQueryWhereDistinct
    on QueryBuilder<Kecamatan, Kecamatan, QDistinct> {
  QueryBuilder<Kecamatan, Kecamatan, QDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QDistinct> distinctByCityCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QDistinct> distinctByKecCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kecCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Kecamatan, Kecamatan, QDistinct> distinctByKecamatan(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'kecamatan', caseSensitive: caseSensitive);
    });
  }
}

extension KecamatanQueryProperty
    on QueryBuilder<Kecamatan, Kecamatan, QQueryProperty> {
  QueryBuilder<Kecamatan, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Kecamatan, String?, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<Kecamatan, String?, QQueryOperations> cityCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityCode');
    });
  }

  QueryBuilder<Kecamatan, String?, QQueryOperations> kecCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kecCode');
    });
  }

  QueryBuilder<Kecamatan, String?, QQueryOperations> kecamatanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'kecamatan');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kecamatan _$KecamatanFromJson(Map<String, dynamic> json) => Kecamatan(
      json['kecCode'] as String?,
      json['kecamatan'] as String?,
      json['cityCode'] as String?,
      json['action'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$KecamatanToJson(Kecamatan instance) => <String, dynamic>{
      'id': instance.id,
      'kecCode': instance.kecCode,
      'kecamatan': instance.kecamatan,
      'cityCode': instance.cityCode,
      'action': instance.action,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'priority_leads.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetPriorityLeadsCollection on Isar {
  IsarCollection<PriorityLeads> get priorityLeads => this.collection();
}

const PriorityLeadsSchema = CollectionSchema(
  name: r'PriorityLeads',
  id: -1414236141660843999,
  properties: {
    r'limitDate': PropertySchema(
      id: 0,
      name: r'limitDate',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 1,
      name: r'name',
      type: IsarType.string,
    ),
    r'refCode': PropertySchema(
      id: 2,
      name: r'refCode',
      type: IsarType.string,
    )
  },
  estimateSize: _priorityLeadsEstimateSize,
  serialize: _priorityLeadsSerialize,
  deserialize: _priorityLeadsDeserialize,
  deserializeProp: _priorityLeadsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _priorityLeadsGetId,
  getLinks: _priorityLeadsGetLinks,
  attach: _priorityLeadsAttach,
  version: '3.0.5',
);

int _priorityLeadsEstimateSize(
  PriorityLeads object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _priorityLeadsSerialize(
  PriorityLeads object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.limitDate);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.refCode);
}

PriorityLeads _priorityLeadsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PriorityLeads(
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[2]),
    reader.readLongOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _priorityLeadsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _priorityLeadsGetId(PriorityLeads object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _priorityLeadsGetLinks(PriorityLeads object) {
  return [];
}

void _priorityLeadsAttach(
    IsarCollection<dynamic> col, Id id, PriorityLeads object) {
  object.id = id;
}

extension PriorityLeadsQueryWhereSort
    on QueryBuilder<PriorityLeads, PriorityLeads, QWhere> {
  QueryBuilder<PriorityLeads, PriorityLeads, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PriorityLeadsQueryWhere
    on QueryBuilder<PriorityLeads, PriorityLeads, QWhereClause> {
  QueryBuilder<PriorityLeads, PriorityLeads, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterWhereClause> idBetween(
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

extension PriorityLeadsQueryFilter
    on QueryBuilder<PriorityLeads, PriorityLeads, QFilterCondition> {
  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      limitDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'limitDate',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      limitDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'limitDate',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      limitDateEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      limitDateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      limitDateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      limitDateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'limitDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refCode',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refCode',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterFilterCondition>
      refCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refCode',
        value: '',
      ));
    });
  }
}

extension PriorityLeadsQueryObject
    on QueryBuilder<PriorityLeads, PriorityLeads, QFilterCondition> {}

extension PriorityLeadsQueryLinks
    on QueryBuilder<PriorityLeads, PriorityLeads, QFilterCondition> {}

extension PriorityLeadsQuerySortBy
    on QueryBuilder<PriorityLeads, PriorityLeads, QSortBy> {
  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> sortByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy>
      sortByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.desc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> sortByRefCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> sortByRefCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.desc);
    });
  }
}

extension PriorityLeadsQuerySortThenBy
    on QueryBuilder<PriorityLeads, PriorityLeads, QSortThenBy> {
  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy>
      thenByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.desc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenByRefCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.asc);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QAfterSortBy> thenByRefCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.desc);
    });
  }
}

extension PriorityLeadsQueryWhereDistinct
    on QueryBuilder<PriorityLeads, PriorityLeads, QDistinct> {
  QueryBuilder<PriorityLeads, PriorityLeads, QDistinct> distinctByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'limitDate');
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PriorityLeads, PriorityLeads, QDistinct> distinctByRefCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refCode', caseSensitive: caseSensitive);
    });
  }
}

extension PriorityLeadsQueryProperty
    on QueryBuilder<PriorityLeads, PriorityLeads, QQueryProperty> {
  QueryBuilder<PriorityLeads, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PriorityLeads, int?, QQueryOperations> limitDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'limitDate');
    });
  }

  QueryBuilder<PriorityLeads, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<PriorityLeads, String?, QQueryOperations> refCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refCode');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriorityLeads _$PriorityLeadsFromJson(Map<String, dynamic> json) =>
    PriorityLeads(
      json['name'] as String?,
      json['refCode'] as String?,
      json['limitDate'] as int?,
    );

Map<String, dynamic> _$PriorityLeadsToJson(PriorityLeads instance) =>
    <String, dynamic>{
      'name': instance.name,
      'refCode': instance.refCode,
      'limitDate': instance.limitDate,
    };

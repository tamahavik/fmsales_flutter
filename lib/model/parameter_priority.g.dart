// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parameter_priority.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetParameterPriorityCollection on Isar {
  IsarCollection<ParameterPriority> get parameterPrioritys => this.collection();
}

const ParameterPrioritySchema = CollectionSchema(
  name: r'ParameterPriority',
  id: -2765482147572811276,
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
  estimateSize: _parameterPriorityEstimateSize,
  serialize: _parameterPrioritySerialize,
  deserialize: _parameterPriorityDeserialize,
  deserializeProp: _parameterPriorityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _parameterPriorityGetId,
  getLinks: _parameterPriorityGetLinks,
  attach: _parameterPriorityAttach,
  version: '3.0.5',
);

int _parameterPriorityEstimateSize(
  ParameterPriority object,
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

void _parameterPrioritySerialize(
  ParameterPriority object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.limitDate);
  writer.writeString(offsets[1], object.name);
  writer.writeString(offsets[2], object.refCode);
}

ParameterPriority _parameterPriorityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ParameterPriority(
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[2]),
    reader.readLongOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _parameterPriorityDeserializeProp<P>(
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

Id _parameterPriorityGetId(ParameterPriority object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _parameterPriorityGetLinks(
    ParameterPriority object) {
  return [];
}

void _parameterPriorityAttach(
    IsarCollection<dynamic> col, Id id, ParameterPriority object) {
  object.id = id;
}

extension ParameterPriorityQueryWhereSort
    on QueryBuilder<ParameterPriority, ParameterPriority, QWhere> {
  QueryBuilder<ParameterPriority, ParameterPriority, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ParameterPriorityQueryWhere
    on QueryBuilder<ParameterPriority, ParameterPriority, QWhereClause> {
  QueryBuilder<ParameterPriority, ParameterPriority, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterWhereClause>
      idBetween(
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

extension ParameterPriorityQueryFilter
    on QueryBuilder<ParameterPriority, ParameterPriority, QFilterCondition> {
  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      limitDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'limitDate',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      limitDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'limitDate',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      limitDateEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'limitDate',
        value: value,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameEqualTo(
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameBetween(
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      refCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refCode',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      refCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refCode',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
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

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      refCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      refCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      refCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refCode',
        value: '',
      ));
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterFilterCondition>
      refCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refCode',
        value: '',
      ));
    });
  }
}

extension ParameterPriorityQueryObject
    on QueryBuilder<ParameterPriority, ParameterPriority, QFilterCondition> {}

extension ParameterPriorityQueryLinks
    on QueryBuilder<ParameterPriority, ParameterPriority, QFilterCondition> {}

extension ParameterPriorityQuerySortBy
    on QueryBuilder<ParameterPriority, ParameterPriority, QSortBy> {
  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      sortByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      sortByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.desc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      sortByRefCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      sortByRefCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.desc);
    });
  }
}

extension ParameterPriorityQuerySortThenBy
    on QueryBuilder<ParameterPriority, ParameterPriority, QSortThenBy> {
  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByLimitDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limitDate', Sort.desc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByRefCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.asc);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QAfterSortBy>
      thenByRefCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refCode', Sort.desc);
    });
  }
}

extension ParameterPriorityQueryWhereDistinct
    on QueryBuilder<ParameterPriority, ParameterPriority, QDistinct> {
  QueryBuilder<ParameterPriority, ParameterPriority, QDistinct>
      distinctByLimitDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'limitDate');
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ParameterPriority, ParameterPriority, QDistinct>
      distinctByRefCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refCode', caseSensitive: caseSensitive);
    });
  }
}

extension ParameterPriorityQueryProperty
    on QueryBuilder<ParameterPriority, ParameterPriority, QQueryProperty> {
  QueryBuilder<ParameterPriority, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ParameterPriority, int?, QQueryOperations> limitDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'limitDate');
    });
  }

  QueryBuilder<ParameterPriority, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<ParameterPriority, String?, QQueryOperations> refCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refCode');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParameterPriority _$ParameterPriorityFromJson(Map<String, dynamic> json) =>
    ParameterPriority(
      json['name'] as String?,
      json['refCode'] as String?,
      json['limitDate'] as int?,
    );

Map<String, dynamic> _$ParameterPriorityToJson(ParameterPriority instance) =>
    <String, dynamic>{
      'name': instance.name,
      'refCode': instance.refCode,
      'limitDate': instance.limitDate,
    };

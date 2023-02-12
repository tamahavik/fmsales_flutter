// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'occupation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetOccupationCollection on Isar {
  IsarCollection<Occupation> get occupations => this.collection();
}

const OccupationSchema = CollectionSchema(
  name: r'Occupation',
  id: -6230706824711654396,
  properties: {
    r'occuCode': PropertySchema(
      id: 0,
      name: r'occuCode',
      type: IsarType.string,
    ),
    r'occuDesc': PropertySchema(
      id: 1,
      name: r'occuDesc',
      type: IsarType.string,
    ),
    r'visible': PropertySchema(
      id: 2,
      name: r'visible',
      type: IsarType.string,
    )
  },
  estimateSize: _occupationEstimateSize,
  serialize: _occupationSerialize,
  deserialize: _occupationDeserialize,
  deserializeProp: _occupationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _occupationGetId,
  getLinks: _occupationGetLinks,
  attach: _occupationAttach,
  version: '3.0.5',
);

int _occupationEstimateSize(
  Occupation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.occuCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.occuDesc;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.visible;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _occupationSerialize(
  Occupation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.occuCode);
  writer.writeString(offsets[1], object.occuDesc);
  writer.writeString(offsets[2], object.visible);
}

Occupation _occupationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Occupation(
    reader.readStringOrNull(offsets[0]),
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _occupationDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _occupationGetId(Occupation object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _occupationGetLinks(Occupation object) {
  return [];
}

void _occupationAttach(IsarCollection<dynamic> col, Id id, Occupation object) {
  object.id = id;
}

extension OccupationQueryWhereSort
    on QueryBuilder<Occupation, Occupation, QWhere> {
  QueryBuilder<Occupation, Occupation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OccupationQueryWhere
    on QueryBuilder<Occupation, Occupation, QWhereClause> {
  QueryBuilder<Occupation, Occupation, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Occupation, Occupation, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterWhereClause> idBetween(
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

extension OccupationQueryFilter
    on QueryBuilder<Occupation, Occupation, QFilterCondition> {
  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occuCode',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occuCode',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'occuCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'occuCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'occuCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occuDesc',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuDescIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occuDesc',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuDescGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'occuDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'occuDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'occuDesc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'occuDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'occuDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'occuDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> occuDescMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'occuDesc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuDescIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      occuDescIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'occuDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visible',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      visibleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visible',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      visibleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'visible',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visible',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition> visibleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visible',
        value: '',
      ));
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterFilterCondition>
      visibleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visible',
        value: '',
      ));
    });
  }
}

extension OccupationQueryObject
    on QueryBuilder<Occupation, Occupation, QFilterCondition> {}

extension OccupationQueryLinks
    on QueryBuilder<Occupation, Occupation, QFilterCondition> {}

extension OccupationQuerySortBy
    on QueryBuilder<Occupation, Occupation, QSortBy> {
  QueryBuilder<Occupation, Occupation, QAfterSortBy> sortByOccuCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> sortByOccuCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.desc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> sortByOccuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuDesc', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> sortByOccuDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuDesc', Sort.desc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> sortByVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> sortByVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.desc);
    });
  }
}

extension OccupationQuerySortThenBy
    on QueryBuilder<Occupation, Occupation, QSortThenBy> {
  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByOccuCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByOccuCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.desc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByOccuDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuDesc', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByOccuDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuDesc', Sort.desc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.asc);
    });
  }

  QueryBuilder<Occupation, Occupation, QAfterSortBy> thenByVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.desc);
    });
  }
}

extension OccupationQueryWhereDistinct
    on QueryBuilder<Occupation, Occupation, QDistinct> {
  QueryBuilder<Occupation, Occupation, QDistinct> distinctByOccuCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'occuCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Occupation, Occupation, QDistinct> distinctByOccuDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'occuDesc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Occupation, Occupation, QDistinct> distinctByVisible(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visible', caseSensitive: caseSensitive);
    });
  }
}

extension OccupationQueryProperty
    on QueryBuilder<Occupation, Occupation, QQueryProperty> {
  QueryBuilder<Occupation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Occupation, String?, QQueryOperations> occuCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'occuCode');
    });
  }

  QueryBuilder<Occupation, String?, QQueryOperations> occuDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'occuDesc');
    });
  }

  QueryBuilder<Occupation, String?, QQueryOperations> visibleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visible');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Occupation _$OccupationFromJson(Map<String, dynamic> json) => Occupation(
      json['occuCode'] as String?,
      json['occuDesc'] as String?,
      json['visible'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$OccupationToJson(Occupation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'occuCode': instance.occuCode,
      'occuDesc': instance.occuDesc,
      'visible': instance.visible,
    };

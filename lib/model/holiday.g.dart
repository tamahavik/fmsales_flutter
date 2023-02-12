// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetHolidayCollection on Isar {
  IsarCollection<Holiday> get holidays => this.collection();
}

const HolidaySchema = CollectionSchema(
  name: r'Holiday',
  id: -7580096251309411325,
  properties: {
    r'holidayDate': PropertySchema(
      id: 0,
      name: r'holidayDate',
      type: IsarType.string,
    ),
    r'holidayName': PropertySchema(
      id: 1,
      name: r'holidayName',
      type: IsarType.string,
    )
  },
  estimateSize: _holidayEstimateSize,
  serialize: _holidaySerialize,
  deserialize: _holidayDeserialize,
  deserializeProp: _holidayDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _holidayGetId,
  getLinks: _holidayGetLinks,
  attach: _holidayAttach,
  version: '3.0.5',
);

int _holidayEstimateSize(
  Holiday object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.holidayDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.holidayName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _holidaySerialize(
  Holiday object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.holidayDate);
  writer.writeString(offsets[1], object.holidayName);
}

Holiday _holidayDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Holiday(
    reader.readStringOrNull(offsets[0]),
    reader.readStringOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _holidayDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _holidayGetId(Holiday object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _holidayGetLinks(Holiday object) {
  return [];
}

void _holidayAttach(IsarCollection<dynamic> col, Id id, Holiday object) {
  object.id = id;
}

extension HolidayQueryWhereSort on QueryBuilder<Holiday, Holiday, QWhere> {
  QueryBuilder<Holiday, Holiday, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HolidayQueryWhere on QueryBuilder<Holiday, Holiday, QWhereClause> {
  QueryBuilder<Holiday, Holiday, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Holiday, Holiday, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterWhereClause> idBetween(
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

extension HolidayQueryFilter
    on QueryBuilder<Holiday, Holiday, QFilterCondition> {
  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'holidayDate',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'holidayDate',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holidayDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'holidayDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'holidayDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'holidayDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'holidayDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'holidayDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'holidayDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'holidayDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holidayDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition>
      holidayDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'holidayDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'holidayName',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'holidayName',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holidayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'holidayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'holidayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'holidayName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'holidayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'holidayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'holidayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'holidayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> holidayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holidayName',
        value: '',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition>
      holidayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'holidayName',
        value: '',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Holiday, Holiday, QAfterFilterCondition> idBetween(
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
}

extension HolidayQueryObject
    on QueryBuilder<Holiday, Holiday, QFilterCondition> {}

extension HolidayQueryLinks
    on QueryBuilder<Holiday, Holiday, QFilterCondition> {}

extension HolidayQuerySortBy on QueryBuilder<Holiday, Holiday, QSortBy> {
  QueryBuilder<Holiday, Holiday, QAfterSortBy> sortByHolidayDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayDate', Sort.asc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> sortByHolidayDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayDate', Sort.desc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> sortByHolidayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayName', Sort.asc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> sortByHolidayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayName', Sort.desc);
    });
  }
}

extension HolidayQuerySortThenBy
    on QueryBuilder<Holiday, Holiday, QSortThenBy> {
  QueryBuilder<Holiday, Holiday, QAfterSortBy> thenByHolidayDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayDate', Sort.asc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> thenByHolidayDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayDate', Sort.desc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> thenByHolidayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayName', Sort.asc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> thenByHolidayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holidayName', Sort.desc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Holiday, Holiday, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension HolidayQueryWhereDistinct
    on QueryBuilder<Holiday, Holiday, QDistinct> {
  QueryBuilder<Holiday, Holiday, QDistinct> distinctByHolidayDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holidayDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Holiday, Holiday, QDistinct> distinctByHolidayName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holidayName', caseSensitive: caseSensitive);
    });
  }
}

extension HolidayQueryProperty
    on QueryBuilder<Holiday, Holiday, QQueryProperty> {
  QueryBuilder<Holiday, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Holiday, String?, QQueryOperations> holidayDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holidayDate');
    });
  }

  QueryBuilder<Holiday, String?, QQueryOperations> holidayNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holidayName');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Holiday _$HolidayFromJson(Map<String, dynamic> json) => Holiday(
      json['holidayDate'] as String?,
      json['holidayName'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$HolidayToJson(Holiday instance) => <String, dynamic>{
      'id': instance.id,
      'holidayDate': instance.holidayDate,
      'holidayName': instance.holidayName,
    };

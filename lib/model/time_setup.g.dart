// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_setup.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetTimeSetupCollection on Isar {
  IsarCollection<TimeSetup> get timeSetups => this.collection();
}

const TimeSetupSchema = CollectionSchema(
  name: r'TimeSetup',
  id: -8078311994742114610,
  properties: {
    r'endHour': PropertySchema(
      id: 0,
      name: r'endHour',
      type: IsarType.long,
    ),
    r'lob': PropertySchema(
      id: 1,
      name: r'lob',
      type: IsarType.string,
    ),
    r'saturday': PropertySchema(
      id: 2,
      name: r'saturday',
      type: IsarType.long,
    ),
    r'startHour': PropertySchema(
      id: 3,
      name: r'startHour',
      type: IsarType.long,
    )
  },
  estimateSize: _timeSetupEstimateSize,
  serialize: _timeSetupSerialize,
  deserialize: _timeSetupDeserialize,
  deserializeProp: _timeSetupDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _timeSetupGetId,
  getLinks: _timeSetupGetLinks,
  attach: _timeSetupAttach,
  version: '3.0.5',
);

int _timeSetupEstimateSize(
  TimeSetup object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.lob;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _timeSetupSerialize(
  TimeSetup object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.endHour);
  writer.writeString(offsets[1], object.lob);
  writer.writeLong(offsets[2], object.saturday);
  writer.writeLong(offsets[3], object.startHour);
}

TimeSetup _timeSetupDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TimeSetup(
    reader.readStringOrNull(offsets[1]),
    reader.readLongOrNull(offsets[0]),
    reader.readLongOrNull(offsets[2]),
    reader.readLongOrNull(offsets[3]),
  );
  object.id = id;
  return object;
}

P _timeSetupDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _timeSetupGetId(TimeSetup object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _timeSetupGetLinks(TimeSetup object) {
  return [];
}

void _timeSetupAttach(IsarCollection<dynamic> col, Id id, TimeSetup object) {
  object.id = id;
}

extension TimeSetupQueryWhereSort
    on QueryBuilder<TimeSetup, TimeSetup, QWhere> {
  QueryBuilder<TimeSetup, TimeSetup, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TimeSetupQueryWhere
    on QueryBuilder<TimeSetup, TimeSetup, QWhereClause> {
  QueryBuilder<TimeSetup, TimeSetup, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TimeSetup, TimeSetup, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterWhereClause> idBetween(
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

extension TimeSetupQueryFilter
    on QueryBuilder<TimeSetup, TimeSetup, QFilterCondition> {
  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> endHourIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'endHour',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> endHourIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'endHour',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> endHourEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'endHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> endHourGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'endHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> endHourLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'endHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> endHourBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'endHour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lob',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lob',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lob',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lob',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lob',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lob',
        value: '',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> lobIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lob',
        value: '',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> saturdayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'saturday',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition>
      saturdayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'saturday',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> saturdayEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'saturday',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> saturdayGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'saturday',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> saturdayLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'saturday',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> saturdayBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'saturday',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> startHourIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startHour',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition>
      startHourIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startHour',
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> startHourEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition>
      startHourGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> startHourLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startHour',
        value: value,
      ));
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterFilterCondition> startHourBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startHour',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TimeSetupQueryObject
    on QueryBuilder<TimeSetup, TimeSetup, QFilterCondition> {}

extension TimeSetupQueryLinks
    on QueryBuilder<TimeSetup, TimeSetup, QFilterCondition> {}

extension TimeSetupQuerySortBy on QueryBuilder<TimeSetup, TimeSetup, QSortBy> {
  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortByEndHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endHour', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortByEndHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endHour', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortByLob() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lob', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortByLobDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lob', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortBySaturday() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturday', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortBySaturdayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturday', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortByStartHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startHour', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> sortByStartHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startHour', Sort.desc);
    });
  }
}

extension TimeSetupQuerySortThenBy
    on QueryBuilder<TimeSetup, TimeSetup, QSortThenBy> {
  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByEndHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endHour', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByEndHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'endHour', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByLob() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lob', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByLobDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lob', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenBySaturday() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturday', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenBySaturdayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'saturday', Sort.desc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByStartHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startHour', Sort.asc);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QAfterSortBy> thenByStartHourDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startHour', Sort.desc);
    });
  }
}

extension TimeSetupQueryWhereDistinct
    on QueryBuilder<TimeSetup, TimeSetup, QDistinct> {
  QueryBuilder<TimeSetup, TimeSetup, QDistinct> distinctByEndHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'endHour');
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QDistinct> distinctByLob(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lob', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QDistinct> distinctBySaturday() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'saturday');
    });
  }

  QueryBuilder<TimeSetup, TimeSetup, QDistinct> distinctByStartHour() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startHour');
    });
  }
}

extension TimeSetupQueryProperty
    on QueryBuilder<TimeSetup, TimeSetup, QQueryProperty> {
  QueryBuilder<TimeSetup, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TimeSetup, int?, QQueryOperations> endHourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'endHour');
    });
  }

  QueryBuilder<TimeSetup, String?, QQueryOperations> lobProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lob');
    });
  }

  QueryBuilder<TimeSetup, int?, QQueryOperations> saturdayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'saturday');
    });
  }

  QueryBuilder<TimeSetup, int?, QQueryOperations> startHourProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startHour');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeSetup _$TimeSetupFromJson(Map<String, dynamic> json) => TimeSetup(
      json['lob'] as String?,
      json['endHour'] as int?,
      json['saturday'] as int?,
      json['startHour'] as int?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$TimeSetupToJson(TimeSetup instance) => <String, dynamic>{
      'id': instance.id,
      'lob': instance.lob,
      'endHour': instance.endHour,
      'saturday': instance.saturday,
      'startHour': instance.startHour,
    };

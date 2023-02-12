// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sla_color.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSlaColorCollection on Isar {
  IsarCollection<SlaColor> get slaColors => this.collection();
}

const SlaColorSchema = CollectionSchema(
  name: r'SlaColor',
  id: 6742035556648231759,
  properties: {
    r'colorCode': PropertySchema(
      id: 0,
      name: r'colorCode',
      type: IsarType.string,
    ),
    r'sourceIdVisum': PropertySchema(
      id: 1,
      name: r'sourceIdVisum',
      type: IsarType.string,
    ),
    r'sourceLeads': PropertySchema(
      id: 2,
      name: r'sourceLeads',
      type: IsarType.string,
    ),
    r'timeEnd': PropertySchema(
      id: 3,
      name: r'timeEnd',
      type: IsarType.long,
    ),
    r'timeStart': PropertySchema(
      id: 4,
      name: r'timeStart',
      type: IsarType.long,
    )
  },
  estimateSize: _slaColorEstimateSize,
  serialize: _slaColorSerialize,
  deserialize: _slaColorDeserialize,
  deserializeProp: _slaColorDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _slaColorGetId,
  getLinks: _slaColorGetLinks,
  attach: _slaColorAttach,
  version: '3.0.5',
);

int _slaColorEstimateSize(
  SlaColor object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.colorCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sourceIdVisum;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sourceLeads;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _slaColorSerialize(
  SlaColor object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.colorCode);
  writer.writeString(offsets[1], object.sourceIdVisum);
  writer.writeString(offsets[2], object.sourceLeads);
  writer.writeLong(offsets[3], object.timeEnd);
  writer.writeLong(offsets[4], object.timeStart);
}

SlaColor _slaColorDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SlaColor(
    reader.readStringOrNull(offsets[2]),
    reader.readLongOrNull(offsets[4]),
    reader.readLongOrNull(offsets[3]),
    reader.readStringOrNull(offsets[0]),
    reader.readStringOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _slaColorDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _slaColorGetId(SlaColor object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _slaColorGetLinks(SlaColor object) {
  return [];
}

void _slaColorAttach(IsarCollection<dynamic> col, Id id, SlaColor object) {
  object.id = id;
}

extension SlaColorQueryWhereSort on QueryBuilder<SlaColor, SlaColor, QWhere> {
  QueryBuilder<SlaColor, SlaColor, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SlaColorQueryWhere on QueryBuilder<SlaColor, SlaColor, QWhereClause> {
  QueryBuilder<SlaColor, SlaColor, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SlaColor, SlaColor, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterWhereClause> idBetween(
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

extension SlaColorQueryFilter
    on QueryBuilder<SlaColor, SlaColor, QFilterCondition> {
  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'colorCode',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'colorCode',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'colorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'colorCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> colorCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      colorCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'colorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceIdVisumIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sourceIdVisum',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceIdVisumIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sourceIdVisum',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceIdVisumEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceIdVisum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceIdVisumGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sourceIdVisum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceIdVisumLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sourceIdVisum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceIdVisumBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sourceIdVisum',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceIdVisumStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sourceIdVisum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceIdVisumEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sourceIdVisum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceIdVisumContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sourceIdVisum',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceIdVisumMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sourceIdVisum',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceIdVisumIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceIdVisum',
        value: '',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceIdVisumIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sourceIdVisum',
        value: '',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sourceLeads',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceLeadsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sourceLeads',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceLeads',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceLeadsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sourceLeads',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sourceLeads',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sourceLeads',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sourceLeads',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sourceLeads',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sourceLeads',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sourceLeads',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> sourceLeadsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sourceLeads',
        value: '',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition>
      sourceLeadsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sourceLeads',
        value: '',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeEndIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeEnd',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeEndIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeEnd',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeEndEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeEndGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeEndLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeEnd',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeEndBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeEnd',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeStartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timeStart',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeStartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timeStart',
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeStartEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeStart',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeStartGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeStart',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeStartLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeStart',
        value: value,
      ));
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterFilterCondition> timeStartBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeStart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SlaColorQueryObject
    on QueryBuilder<SlaColor, SlaColor, QFilterCondition> {}

extension SlaColorQueryLinks
    on QueryBuilder<SlaColor, SlaColor, QFilterCondition> {}

extension SlaColorQuerySortBy on QueryBuilder<SlaColor, SlaColor, QSortBy> {
  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortByColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortByColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortBySourceIdVisum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIdVisum', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortBySourceIdVisumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIdVisum', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortBySourceLeads() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLeads', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortBySourceLeadsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLeads', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortByTimeEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> sortByTimeStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.desc);
    });
  }
}

extension SlaColorQuerySortThenBy
    on QueryBuilder<SlaColor, SlaColor, QSortThenBy> {
  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByColorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByColorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorCode', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenBySourceIdVisum() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIdVisum', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenBySourceIdVisumDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceIdVisum', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenBySourceLeads() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLeads', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenBySourceLeadsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sourceLeads', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByTimeEndDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeEnd', Sort.desc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.asc);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QAfterSortBy> thenByTimeStartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeStart', Sort.desc);
    });
  }
}

extension SlaColorQueryWhereDistinct
    on QueryBuilder<SlaColor, SlaColor, QDistinct> {
  QueryBuilder<SlaColor, SlaColor, QDistinct> distinctByColorCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QDistinct> distinctBySourceIdVisum(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceIdVisum',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QDistinct> distinctBySourceLeads(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sourceLeads', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SlaColor, SlaColor, QDistinct> distinctByTimeEnd() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeEnd');
    });
  }

  QueryBuilder<SlaColor, SlaColor, QDistinct> distinctByTimeStart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeStart');
    });
  }
}

extension SlaColorQueryProperty
    on QueryBuilder<SlaColor, SlaColor, QQueryProperty> {
  QueryBuilder<SlaColor, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SlaColor, String?, QQueryOperations> colorCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorCode');
    });
  }

  QueryBuilder<SlaColor, String?, QQueryOperations> sourceIdVisumProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceIdVisum');
    });
  }

  QueryBuilder<SlaColor, String?, QQueryOperations> sourceLeadsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sourceLeads');
    });
  }

  QueryBuilder<SlaColor, int?, QQueryOperations> timeEndProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeEnd');
    });
  }

  QueryBuilder<SlaColor, int?, QQueryOperations> timeStartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeStart');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SlaColor _$SlaColorFromJson(Map<String, dynamic> json) => SlaColor(
      json['sourceLeads'] as String?,
      json['timeStart'] as int?,
      json['timeEnd'] as int?,
      json['colorCode'] as String?,
      json['sourceIdVisum'] as String?,
    );

Map<String, dynamic> _$SlaColorToJson(SlaColor instance) => <String, dynamic>{
      'sourceLeads': instance.sourceLeads,
      'timeStart': instance.timeStart,
      'timeEnd': instance.timeEnd,
      'colorCode': instance.colorCode,
      'sourceIdVisum': instance.sourceIdVisum,
    };

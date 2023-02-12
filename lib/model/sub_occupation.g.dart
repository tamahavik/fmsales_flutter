// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_occupation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSubOccupationCollection on Isar {
  IsarCollection<SubOccupation> get subOccupations => this.collection();
}

const SubOccupationSchema = CollectionSchema(
  name: r'SubOccupation',
  id: 586255769990348993,
  properties: {
    r'occuCode': PropertySchema(
      id: 0,
      name: r'occuCode',
      type: IsarType.string,
    ),
    r'occuSubCode': PropertySchema(
      id: 1,
      name: r'occuSubCode',
      type: IsarType.string,
    ),
    r'occuSubDesc': PropertySchema(
      id: 2,
      name: r'occuSubDesc',
      type: IsarType.string,
    ),
    r'visible': PropertySchema(
      id: 3,
      name: r'visible',
      type: IsarType.string,
    )
  },
  estimateSize: _subOccupationEstimateSize,
  serialize: _subOccupationSerialize,
  deserialize: _subOccupationDeserialize,
  deserializeProp: _subOccupationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _subOccupationGetId,
  getLinks: _subOccupationGetLinks,
  attach: _subOccupationAttach,
  version: '3.0.5',
);

int _subOccupationEstimateSize(
  SubOccupation object,
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
    final value = object.occuSubCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.occuSubDesc;
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

void _subOccupationSerialize(
  SubOccupation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.occuCode);
  writer.writeString(offsets[1], object.occuSubCode);
  writer.writeString(offsets[2], object.occuSubDesc);
  writer.writeString(offsets[3], object.visible);
}

SubOccupation _subOccupationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SubOccupation(
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[2]),
    reader.readStringOrNull(offsets[3]),
    reader.readStringOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _subOccupationDeserializeProp<P>(
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

Id _subOccupationGetId(SubOccupation object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _subOccupationGetLinks(SubOccupation object) {
  return [];
}

void _subOccupationAttach(
    IsarCollection<dynamic> col, Id id, SubOccupation object) {
  object.id = id;
}

extension SubOccupationQueryWhereSort
    on QueryBuilder<SubOccupation, SubOccupation, QWhere> {
  QueryBuilder<SubOccupation, SubOccupation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SubOccupationQueryWhere
    on QueryBuilder<SubOccupation, SubOccupation, QWhereClause> {
  QueryBuilder<SubOccupation, SubOccupation, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterWhereClause> idBetween(
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

extension SubOccupationQueryFilter
    on QueryBuilder<SubOccupation, SubOccupation, QFilterCondition> {
  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occuCode',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occuCode',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeEqualTo(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeLessThan(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeBetween(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeEndsWith(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'occuCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'occuCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'occuCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occuSubCode',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occuSubCode',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuSubCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'occuSubCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'occuSubCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'occuSubCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'occuSubCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'occuSubCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'occuSubCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'occuSubCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuSubCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'occuSubCode',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'occuSubDesc',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'occuSubDesc',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuSubDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'occuSubDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'occuSubDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'occuSubDesc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'occuSubDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'occuSubDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'occuSubDesc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'occuSubDesc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'occuSubDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      occuSubDescIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'occuSubDesc',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'visible',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'visible',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleEqualTo(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleLessThan(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleBetween(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleStartsWith(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleEndsWith(
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

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'visible',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'visible',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'visible',
        value: '',
      ));
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterFilterCondition>
      visibleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'visible',
        value: '',
      ));
    });
  }
}

extension SubOccupationQueryObject
    on QueryBuilder<SubOccupation, SubOccupation, QFilterCondition> {}

extension SubOccupationQueryLinks
    on QueryBuilder<SubOccupation, SubOccupation, QFilterCondition> {}

extension SubOccupationQuerySortBy
    on QueryBuilder<SubOccupation, SubOccupation, QSortBy> {
  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> sortByOccuCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy>
      sortByOccuCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> sortByOccuSubCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubCode', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy>
      sortByOccuSubCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubCode', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> sortByOccuSubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubDesc', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy>
      sortByOccuSubDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubDesc', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> sortByVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> sortByVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.desc);
    });
  }
}

extension SubOccupationQuerySortThenBy
    on QueryBuilder<SubOccupation, SubOccupation, QSortThenBy> {
  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenByOccuCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy>
      thenByOccuCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuCode', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenByOccuSubCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubCode', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy>
      thenByOccuSubCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubCode', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenByOccuSubDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubDesc', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy>
      thenByOccuSubDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'occuSubDesc', Sort.desc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenByVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.asc);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QAfterSortBy> thenByVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'visible', Sort.desc);
    });
  }
}

extension SubOccupationQueryWhereDistinct
    on QueryBuilder<SubOccupation, SubOccupation, QDistinct> {
  QueryBuilder<SubOccupation, SubOccupation, QDistinct> distinctByOccuCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'occuCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QDistinct> distinctByOccuSubCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'occuSubCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QDistinct> distinctByOccuSubDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'occuSubDesc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SubOccupation, SubOccupation, QDistinct> distinctByVisible(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'visible', caseSensitive: caseSensitive);
    });
  }
}

extension SubOccupationQueryProperty
    on QueryBuilder<SubOccupation, SubOccupation, QQueryProperty> {
  QueryBuilder<SubOccupation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SubOccupation, String?, QQueryOperations> occuCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'occuCode');
    });
  }

  QueryBuilder<SubOccupation, String?, QQueryOperations> occuSubCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'occuSubCode');
    });
  }

  QueryBuilder<SubOccupation, String?, QQueryOperations> occuSubDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'occuSubDesc');
    });
  }

  QueryBuilder<SubOccupation, String?, QQueryOperations> visibleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'visible');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubOccupation _$SubOccupationFromJson(Map<String, dynamic> json) =>
    SubOccupation(
      json['occuSubCode'] as String?,
      json['occuSubDesc'] as String?,
      json['visible'] as String?,
      json['occuCode'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$SubOccupationToJson(SubOccupation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'occuSubCode': instance.occuSubCode,
      'occuSubDesc': instance.occuSubDesc,
      'visible': instance.visible,
      'occuCode': instance.occuCode,
    };

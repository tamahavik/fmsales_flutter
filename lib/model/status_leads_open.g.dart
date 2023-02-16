// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_leads_open.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetStatusLeadsOpenCollection on Isar {
  IsarCollection<StatusLeadsOpen> get statusLeadsOpens => this.collection();
}

const StatusLeadsOpenSchema = CollectionSchema(
  name: r'StatusLeadsOpen',
  id: 5361604321250336906,
  properties: {
    r'assignTo': PropertySchema(
      id: 0,
      name: r'assignTo',
      type: IsarType.string,
    ),
    r'birthDate': PropertySchema(
      id: 1,
      name: r'birthDate',
      type: IsarType.string,
    ),
    r'contractNo': PropertySchema(
      id: 2,
      name: r'contractNo',
      type: IsarType.string,
    ),
    r'custName': PropertySchema(
      id: 3,
      name: r'custName',
      type: IsarType.string,
    ),
    r'custNo': PropertySchema(
      id: 4,
      name: r'custNo',
      type: IsarType.string,
    ),
    r'dataSource': PropertySchema(
      id: 5,
      name: r'dataSource',
      type: IsarType.string,
    )
  },
  estimateSize: _statusLeadsOpenEstimateSize,
  serialize: _statusLeadsOpenSerialize,
  deserialize: _statusLeadsOpenDeserialize,
  deserializeProp: _statusLeadsOpenDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _statusLeadsOpenGetId,
  getLinks: _statusLeadsOpenGetLinks,
  attach: _statusLeadsOpenAttach,
  version: '3.0.5',
);

int _statusLeadsOpenEstimateSize(
  StatusLeadsOpen object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.assignTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.birthDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.contractNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.custName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.custNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dataSource;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _statusLeadsOpenSerialize(
  StatusLeadsOpen object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.assignTo);
  writer.writeString(offsets[1], object.birthDate);
  writer.writeString(offsets[2], object.contractNo);
  writer.writeString(offsets[3], object.custName);
  writer.writeString(offsets[4], object.custNo);
  writer.writeString(offsets[5], object.dataSource);
}

StatusLeadsOpen _statusLeadsOpenDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = StatusLeadsOpen(
    reader.readStringOrNull(offsets[2]),
    reader.readStringOrNull(offsets[4]),
    reader.readStringOrNull(offsets[0]),
    reader.readStringOrNull(offsets[5]),
    reader.readStringOrNull(offsets[3]),
    reader.readStringOrNull(offsets[1]),
  );
  object.id = id;
  return object;
}

P _statusLeadsOpenDeserializeProp<P>(
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
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _statusLeadsOpenGetId(StatusLeadsOpen object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _statusLeadsOpenGetLinks(StatusLeadsOpen object) {
  return [];
}

void _statusLeadsOpenAttach(
    IsarCollection<dynamic> col, Id id, StatusLeadsOpen object) {
  object.id = id;
}

extension StatusLeadsOpenQueryWhereSort
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QWhere> {
  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StatusLeadsOpenQueryWhere
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QWhereClause> {
  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterWhereClause>
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

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterWhereClause> idBetween(
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

extension StatusLeadsOpenQueryFilter
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QFilterCondition> {
  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignTo',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignTo',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assignTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assignTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assignTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assignTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignTo',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      assignToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assignTo',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'birthDate',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'birthDate',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'birthDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'birthDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'birthDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'birthDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthDate',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      birthDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'birthDate',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contractNo',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contractNo',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contractNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contractNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contractNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contractNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contractNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contractNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contractNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contractNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contractNo',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      contractNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contractNo',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'custName',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'custName',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'custName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'custName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'custName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'custName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'custName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'custName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'custName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custName',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'custName',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'custNo',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'custNo',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'custNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'custNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'custNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'custNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'custNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'custNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'custNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'custNo',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      custNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'custNo',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dataSource',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dataSource',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataSource',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dataSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dataSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dataSource',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dataSource',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataSource',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      dataSourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dataSource',
        value: '',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
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

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
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

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterFilterCondition>
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
}

extension StatusLeadsOpenQueryObject
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QFilterCondition> {}

extension StatusLeadsOpenQueryLinks
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QFilterCondition> {}

extension StatusLeadsOpenQuerySortBy
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QSortBy> {
  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByAssignTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignTo', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByAssignToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignTo', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByContractNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contractNo', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByContractNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contractNo', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByCustName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custName', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByCustNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custName', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy> sortByCustNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custNo', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByCustNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custNo', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByDataSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataSource', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      sortByDataSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataSource', Sort.desc);
    });
  }
}

extension StatusLeadsOpenQuerySortThenBy
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QSortThenBy> {
  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByAssignTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignTo', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByAssignToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignTo', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByBirthDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByBirthDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthDate', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByContractNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contractNo', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByContractNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contractNo', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByCustName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custName', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByCustNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custName', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy> thenByCustNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custNo', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByCustNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'custNo', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByDataSource() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataSource', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy>
      thenByDataSourceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataSource', Sort.desc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension StatusLeadsOpenQueryWhereDistinct
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct> {
  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct> distinctByAssignTo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assignTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct> distinctByBirthDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct>
      distinctByContractNo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contractNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct> distinctByCustName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'custName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct> distinctByCustNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'custNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QDistinct>
      distinctByDataSource({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataSource', caseSensitive: caseSensitive);
    });
  }
}

extension StatusLeadsOpenQueryProperty
    on QueryBuilder<StatusLeadsOpen, StatusLeadsOpen, QQueryProperty> {
  QueryBuilder<StatusLeadsOpen, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<StatusLeadsOpen, String?, QQueryOperations> assignToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assignTo');
    });
  }

  QueryBuilder<StatusLeadsOpen, String?, QQueryOperations> birthDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthDate');
    });
  }

  QueryBuilder<StatusLeadsOpen, String?, QQueryOperations>
      contractNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contractNo');
    });
  }

  QueryBuilder<StatusLeadsOpen, String?, QQueryOperations> custNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'custName');
    });
  }

  QueryBuilder<StatusLeadsOpen, String?, QQueryOperations> custNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'custNo');
    });
  }

  QueryBuilder<StatusLeadsOpen, String?, QQueryOperations>
      dataSourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataSource');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusLeadsOpen _$StatusLeadsOpenFromJson(Map<String, dynamic> json) =>
    StatusLeadsOpen(
      json['contractNo'] as String?,
      json['custNo'] as String?,
      json['assignTo'] as String?,
      json['dataSource'] as String?,
      json['custName'] as String?,
      json['birthDate'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$StatusLeadsOpenToJson(StatusLeadsOpen instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contractNo': instance.contractNo,
      'custNo': instance.custNo,
      'assignTo': instance.assignTo,
      'dataSource': instance.dataSource,
      'custName': instance.custName,
      'birthDate': instance.birthDate,
    };

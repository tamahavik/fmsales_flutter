// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetModelCollection on Isar {
  IsarCollection<Model> get models => this.collection();
}

const ModelSchema = CollectionSchema(
  name: r'Model',
  id: -3989302092090443675,
  properties: {
    r'branchId': PropertySchema(
      id: 0,
      name: r'branchId',
      type: IsarType.string,
    ),
    r'categoryId': PropertySchema(
      id: 1,
      name: r'categoryId',
      type: IsarType.string,
    ),
    r'isVehicle': PropertySchema(
      id: 2,
      name: r'isVehicle',
      type: IsarType.string,
    ),
    r'needAddColl': PropertySchema(
      id: 3,
      name: r'needAddColl',
      type: IsarType.string,
    ),
    r'newUsed': PropertySchema(
      id: 4,
      name: r'newUsed',
      type: IsarType.string,
    ),
    r'objBrand': PropertySchema(
      id: 5,
      name: r'objBrand',
      type: IsarType.string,
    ),
    r'objCode': PropertySchema(
      id: 6,
      name: r'objCode',
      type: IsarType.string,
    ),
    r'objDescr': PropertySchema(
      id: 7,
      name: r'objDescr',
      type: IsarType.string,
    ),
    r'objGrp': PropertySchema(
      id: 8,
      name: r'objGrp',
      type: IsarType.string,
    ),
    r'objMake': PropertySchema(
      id: 9,
      name: r'objMake',
      type: IsarType.string,
    ),
    r'objModel': PropertySchema(
      id: 10,
      name: r'objModel',
      type: IsarType.string,
    ),
    r'objSize': PropertySchema(
      id: 11,
      name: r'objSize',
      type: IsarType.string,
    ),
    r'objType': PropertySchema(
      id: 12,
      name: r'objType',
      type: IsarType.string,
    )
  },
  estimateSize: _modelEstimateSize,
  serialize: _modelSerialize,
  deserialize: _modelDeserialize,
  deserializeProp: _modelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _modelGetId,
  getLinks: _modelGetLinks,
  attach: _modelAttach,
  version: '3.0.5',
);

int _modelEstimateSize(
  Model object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.branchId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.categoryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.isVehicle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.needAddColl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.newUsed;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objBrand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objDescr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objGrp;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objMake;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objModel;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objSize;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _modelSerialize(
  Model object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.branchId);
  writer.writeString(offsets[1], object.categoryId);
  writer.writeString(offsets[2], object.isVehicle);
  writer.writeString(offsets[3], object.needAddColl);
  writer.writeString(offsets[4], object.newUsed);
  writer.writeString(offsets[5], object.objBrand);
  writer.writeString(offsets[6], object.objCode);
  writer.writeString(offsets[7], object.objDescr);
  writer.writeString(offsets[8], object.objGrp);
  writer.writeString(offsets[9], object.objMake);
  writer.writeString(offsets[10], object.objModel);
  writer.writeString(offsets[11], object.objSize);
  writer.writeString(offsets[12], object.objType);
}

Model _modelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Model(
    reader.readStringOrNull(offsets[6]),
    reader.readStringOrNull(offsets[8]),
    reader.readStringOrNull(offsets[7]),
    reader.readStringOrNull(offsets[5]),
    reader.readStringOrNull(offsets[10]),
    reader.readStringOrNull(offsets[12]),
    reader.readStringOrNull(offsets[11]),
    reader.readStringOrNull(offsets[9]),
    reader.readStringOrNull(offsets[0]),
    reader.readStringOrNull(offsets[1]),
    reader.readStringOrNull(offsets[3]),
    reader.readStringOrNull(offsets[4]),
    reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _modelDeserializeProp<P>(
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
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _modelGetId(Model object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _modelGetLinks(Model object) {
  return [];
}

void _modelAttach(IsarCollection<dynamic> col, Id id, Model object) {
  object.id = id;
}

extension ModelQueryWhereSort on QueryBuilder<Model, Model, QWhere> {
  QueryBuilder<Model, Model, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ModelQueryWhere on QueryBuilder<Model, Model, QWhereClause> {
  QueryBuilder<Model, Model, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Model, Model, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Model, Model, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Model, Model, QAfterWhereClause> idBetween(
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

extension ModelQueryFilter on QueryBuilder<Model, Model, QFilterCondition> {
  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'branchId',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'branchId',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'branchId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'branchId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'branchId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'branchId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'branchId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'branchId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'branchId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'branchId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'branchId',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> branchIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'branchId',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Model, Model, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Model, Model, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isVehicle',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isVehicle',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isVehicle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'isVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'isVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'isVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'isVehicle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isVehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> isVehicleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'isVehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'needAddColl',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'needAddColl',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'needAddColl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'needAddColl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'needAddColl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'needAddColl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'needAddColl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'needAddColl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'needAddColl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'needAddColl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'needAddColl',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> needAddCollIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'needAddColl',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'newUsed',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'newUsed',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newUsed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newUsed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newUsed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newUsed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'newUsed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'newUsed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'newUsed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'newUsed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newUsed',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> newUsedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'newUsed',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objBrand',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objBrand',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objBrand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objBrand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objBrandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objCode',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objCode',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objDescr',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objDescr',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objDescr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objDescr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objDescr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objDescr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objDescr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objDescr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objDescr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objDescr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objDescr',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objDescrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objDescr',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objGrp',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objGrp',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objGrp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objGrp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objGrp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objGrp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objGrp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objGrp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objGrp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objGrp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objGrp',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objGrpIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objGrp',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objMake',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objMake',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objMake',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objMake',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objMake',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objMakeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objMake',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objModel',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objModel',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objModel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objModel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objModel',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objModelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objModel',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objSize',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objSize',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objSize',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objSize',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objType',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objType',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objType',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objType',
        value: '',
      ));
    });
  }
}

extension ModelQueryObject on QueryBuilder<Model, Model, QFilterCondition> {}

extension ModelQueryLinks on QueryBuilder<Model, Model, QFilterCondition> {}

extension ModelQuerySortBy on QueryBuilder<Model, Model, QSortBy> {
  QueryBuilder<Model, Model, QAfterSortBy> sortByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branchId', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branchId', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByIsVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVehicle', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByIsVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVehicle', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByNeedAddColl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needAddColl', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByNeedAddCollDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needAddColl', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByNewUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newUsed', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByNewUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newUsed', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objBrand', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objBrand', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objCode', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objCode', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjDescr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objDescr', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjDescrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objDescr', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjGrp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objGrp', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjGrpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objGrp', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objMake', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objMake', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objModel', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objModel', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objSize', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objSize', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objType', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objType', Sort.desc);
    });
  }
}

extension ModelQuerySortThenBy on QueryBuilder<Model, Model, QSortThenBy> {
  QueryBuilder<Model, Model, QAfterSortBy> thenByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branchId', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'branchId', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByIsVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVehicle', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByIsVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVehicle', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByNeedAddColl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needAddColl', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByNeedAddCollDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needAddColl', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByNewUsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newUsed', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByNewUsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newUsed', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objBrand', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objBrand', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objCode', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objCode', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjDescr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objDescr', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjDescrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objDescr', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjGrp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objGrp', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjGrpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objGrp', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objMake', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objMake', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objModel', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objModel', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objSize', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objSize', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objType', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objType', Sort.desc);
    });
  }
}

extension ModelQueryWhereDistinct on QueryBuilder<Model, Model, QDistinct> {
  QueryBuilder<Model, Model, QDistinct> distinctByBranchId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'branchId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByCategoryId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByIsVehicle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isVehicle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByNeedAddColl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'needAddColl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByNewUsed(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newUsed', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objBrand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjDescr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objDescr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjGrp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objGrp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjMake(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objMake', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objModel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjSize(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objSize', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objType', caseSensitive: caseSensitive);
    });
  }
}

extension ModelQueryProperty on QueryBuilder<Model, Model, QQueryProperty> {
  QueryBuilder<Model, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'branchId');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> isVehicleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isVehicle');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> needAddCollProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'needAddColl');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> newUsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newUsed');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objBrandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objBrand');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objCode');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objDescrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objDescr');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objGrpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objGrp');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objMakeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objMake');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objModel');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objSize');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objType');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      json['objCode'] as String?,
      json['objGrp'] as String?,
      json['objDescr'] as String?,
      json['objBrand'] as String?,
      json['objModel'] as String?,
      json['objType'] as String?,
      json['objSize'] as String?,
      json['objMake'] as String?,
      json['branchId'] as String?,
      json['categoryId'] as String?,
      json['needAddColl'] as String?,
      json['newUsed'] as String?,
      json['isVehicle'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'id': instance.id,
      'objCode': instance.objCode,
      'objGrp': instance.objGrp,
      'objDescr': instance.objDescr,
      'objBrand': instance.objBrand,
      'objModel': instance.objModel,
      'objType': instance.objType,
      'objSize': instance.objSize,
      'objMake': instance.objMake,
      'branchId': instance.branchId,
      'categoryId': instance.categoryId,
      'needAddColl': instance.needAddColl,
      'newUsed': instance.newUsed,
      'isVehicle': instance.isVehicle,
    };

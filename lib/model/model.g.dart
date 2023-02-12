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
    r'objectBrand': PropertySchema(
      id: 5,
      name: r'objectBrand',
      type: IsarType.string,
    ),
    r'objectCode': PropertySchema(
      id: 6,
      name: r'objectCode',
      type: IsarType.string,
    ),
    r'objectDescription': PropertySchema(
      id: 7,
      name: r'objectDescription',
      type: IsarType.string,
    ),
    r'objectGroup': PropertySchema(
      id: 8,
      name: r'objectGroup',
      type: IsarType.string,
    ),
    r'objectMake': PropertySchema(
      id: 9,
      name: r'objectMake',
      type: IsarType.string,
    ),
    r'objectModel': PropertySchema(
      id: 10,
      name: r'objectModel',
      type: IsarType.string,
    ),
    r'objectSize': PropertySchema(
      id: 11,
      name: r'objectSize',
      type: IsarType.string,
    ),
    r'objectType': PropertySchema(
      id: 12,
      name: r'objectType',
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
    final value = object.objectBrand;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectMake;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectModel;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectSize;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.objectType;
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
  writer.writeString(offsets[5], object.objectBrand);
  writer.writeString(offsets[6], object.objectCode);
  writer.writeString(offsets[7], object.objectDescription);
  writer.writeString(offsets[8], object.objectGroup);
  writer.writeString(offsets[9], object.objectMake);
  writer.writeString(offsets[10], object.objectModel);
  writer.writeString(offsets[11], object.objectSize);
  writer.writeString(offsets[12], object.objectType);
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

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectBrand',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectBrand',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectBrand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectBrand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectBrandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectCode',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectCode',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectDescription',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition>
      objectDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectDescription',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition>
      objectDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition>
      objectDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectGroup',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectGroup',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectMake',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectMake',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectMake',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectMake',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectMake',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectMake',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectMakeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectMake',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectModel',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectModel',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectModel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectModel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectModel',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectModelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectModel',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectSize',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectSize',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectSize',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectSize',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectSize',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectSizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectSize',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'objectType',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'objectType',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'objectType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'objectType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'objectType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'objectType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'objectType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'objectType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'objectType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'objectType',
        value: '',
      ));
    });
  }

  QueryBuilder<Model, Model, QAfterFilterCondition> objectTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'objectType',
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

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectBrand', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectBrand', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectCode', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectCode', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectDescription', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectDescription', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectGroup', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectGroup', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectMake', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectMake', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectModel', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectModel', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectSize', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectSize', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectType', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> sortByObjectTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectType', Sort.desc);
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

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectBrand', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectBrand', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectCode', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectCode', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectDescription', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectDescription', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectGroup', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectGroup', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectMake', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectMake', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectModel', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectModel', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectSize', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectSize', Sort.desc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectType', Sort.asc);
    });
  }

  QueryBuilder<Model, Model, QAfterSortBy> thenByObjectTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'objectType', Sort.desc);
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

  QueryBuilder<Model, Model, QDistinct> distinctByObjectBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectBrand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectMake(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectMake', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectModel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectSize(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectSize', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Model, Model, QDistinct> distinctByObjectType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'objectType', caseSensitive: caseSensitive);
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

  QueryBuilder<Model, String?, QQueryOperations> objectBrandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectBrand');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectCode');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectDescription');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectGroup');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectMakeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectMake');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectModel');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectSize');
    });
  }

  QueryBuilder<Model, String?, QQueryOperations> objectTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'objectType');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => Model(
      json['objectCode'] as String?,
      json['objectGroup'] as String?,
      json['objectDescription'] as String?,
      json['objectBrand'] as String?,
      json['objectModel'] as String?,
      json['objectType'] as String?,
      json['objectSize'] as String?,
      json['objectMake'] as String?,
      json['branchId'] as String?,
      json['categoryId'] as String?,
      json['needAddColl'] as String?,
      json['newUsed'] as String?,
      json['isVehicle'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'id': instance.id,
      'objectCode': instance.objectCode,
      'objectGroup': instance.objectGroup,
      'objectDescription': instance.objectDescription,
      'objectBrand': instance.objectBrand,
      'objectModel': instance.objectModel,
      'objectType': instance.objectType,
      'objectSize': instance.objectSize,
      'objectMake': instance.objectMake,
      'branchId': instance.branchId,
      'categoryId': instance.categoryId,
      'needAddColl': instance.needAddColl,
      'newUsed': instance.newUsed,
      'isVehicle': instance.isVehicle,
    };

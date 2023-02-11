// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryAdapter extends TypeAdapter<_$_Category> {
  @override
  final int typeId = 0;

  @override
  _$_Category read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Category(
      objGroup: fields[0] as String?,
      objectDescription: fields[1] as String?,
      collType: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Category obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.objGroup)
      ..writeByte(1)
      ..write(obj.objectDescription)
      ..writeByte(2)
      ..write(obj.collType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      objGroup: json['objGroup'] as String?,
      objectDescription: json['objectDescription'] as String?,
      collType: json['collType'] as String?,
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'objGroup': instance.objGroup,
      'objectDescription': instance.objectDescription,
      'collType': instance.collType,
    };

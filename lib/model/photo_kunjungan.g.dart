// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_kunjungan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoKunjungan _$PhotoKunjunganFromJson(Map<String, dynamic> json) =>
    PhotoKunjungan(
      json['idLeadDetail'] as String?,
      (json['lat'] as num?)?.toDouble(),
      (json['long'] as num?)?.toDouble(),
      json['alamat'] as String?,
    );

Map<String, dynamic> _$PhotoKunjunganToJson(PhotoKunjungan instance) =>
    <String, dynamic>{
      'idLeadDetail': instance.idLeadDetail,
      'lat': instance.lat,
      'long': instance.long,
      'alamat': instance.alamat,
    };

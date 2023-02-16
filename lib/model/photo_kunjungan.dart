import 'package:json_annotation/json_annotation.dart';

part 'photo_kunjungan.g.dart';

@JsonSerializable()
class PhotoKunjungan {
  String? idLeadDetail;
  double? lat;
  double? long;
  String? alamat;

  PhotoKunjungan(this.idLeadDetail, this.lat, this.long, this.alamat);

  factory PhotoKunjungan.fromJson(Map<String, dynamic> json) =>
      _$PhotoKunjunganFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoKunjunganToJson(this);
}

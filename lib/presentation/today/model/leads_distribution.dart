import 'package:freezed_annotation/freezed_annotation.dart';

part 'leads_distribution.freezed.dart';

part 'leads_distribution.g.dart';

@freezed
class LeadsDistribution with _$LeadsDistribution {
  const factory LeadsDistribution({
    String? id,
    String? recommendedBusinessUnit,
    String? branchId,
    String? branchName,
    String? area,
    String? posId,
    String? posName,
    String? custNo,
    String? custMainNo,
    String? memberId,
    String? noFifgroupCard,
    String? lastBusinessUnit,
    String? noPol,
    String? vehicleType,
    String? vehicleYear,
    String? bpkbName,
    String? mobileNoOne,
    String? mobileNoTwo,
    String? collectmobileNoOne,
    String? collectmobileNoTwo,
    String? fixedPhoneArea,
    String? fixedPhone,
    String? officePhoneArea,
    String? officePhone,
    String? custName,
    int? birthDate,
    String? birthPlace,
    String? job,
    String? subOccupation,
    String? address,
    String? rtRw,
    String? province,
    String? city,
    String? kecamatan,
    String? kelurahan,
    String? zipCode,
    String? subZipCode,
    int? visitDate,
    String? dataSource,
    String? flag,
    String? platform,
    String? gender,
    String? contractNumber,
    String? priority,
    int? statusLeadId,
    String? getVehicleYear,
    String? nik,
    String? remarkUh,
    String? hasilFuUh,
    String? hasilFu,
    String? dataSourceName,
    String? vehicleDesc,
    int? enhLeadId,
    int? startDate,
    int? finalDate,
    String? colorFinal,
    String? statusFgc,
    String? plafondFgc,
  }) = _LeadsDistribution;

  factory LeadsDistribution.fromJson(Map<String, dynamic> json) =>
      _$LeadsDistributionFromJson(json);
}

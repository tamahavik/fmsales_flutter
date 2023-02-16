import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leads.g.dart';

@JsonSerializable()
@collection
class Leads {
  Id? id = Isar.autoIncrement;
  String? distId;
  String? distDate;
  int? expiredDate;
  String? recommendedBusinessUnit;
  String? officeCode;
  String? officeName;
  String? area;
  String? posId;
  String? posName;
  String? customerNo;
  String? customerMainNo;
  String? memberId;
  String? noFifgroupCard;
  String? lastBusinessUnit;
  String? gender;
  String? noPol;
  String? vehicleType;
  int? vehicleYear;
  int? statusLeadId;
  String? mobileNo01;
  String? mobileNo02;
  String? fixedPhoneArea;
  String? officePhoneArea;
  String? collectMobileNo01;
  String? collectMobileNo02;
  String? fixedPhone;
  String? officePhone;
  String? customerName;
  String? nik;
  String? birthPlace;
  String? birthDate;
  String? job;
  String? subOccupation;
  String? address;
  String? rtRw;
  String? province;
  String? city;
  String? kecamatan;
  String? kelurahan;
  String? zipCode;
  String? addressSurvey;
  String? rtRwSurvey;
  String? provinceSurvey;
  String? citySurvey;
  String? kecamatanSurvey;
  String? kelurahanSurvey;
  String? zipCodeSurvey;
  String? dataSource;
  String? visitDate;
  String? flag;
  String? platform = "K";
  String? followUp;
  String? phoneNo05;
  String? phoneNo06;
  String? followUpResult;
  String? businessUnit;
  int? loanAmount;
  String? loanPurpose;
  String? objectCategory;
  String? object;
  String? suppCodeName;
  String? anotherAsset;
  int? top = 0;
  String? remark;
  String? img01;
  String? img02;
  String? img03;
  String? img04;
  String? photoKunjungan;
  int? timePhotoKunjungan;
  double? lat6;
  double? long6;
  String? alamatLatLong;
  int? time01;
  int? time02;
  int? time03;
  int? time04;
  String? statusTask;
  int? lastPage = 0;
  int? source;
  int? dateModified;
  int? lat1;
  int? lat2;
  int? long1;
  int? long2;
  String? currentMce;
  String? slaLeadValue;
  String? slaOpportunityValue;
  String? contractNumber;
  String? flagOffline;
  String? branchId;
  String? branchName;
  String? bpkbName;
  String? priority;
  String? flagSubmitDraft;
  String? dateSlaCreated;
  String? remarkUh;
  String? hasilFuUh;
  String? tipe;
  String? merk;
  String? keterangan;
  String? alamatEnh;
  String? newAlamat;
  String? cekMotor;
  String? tahunMotor;
  String? potensiKetertarikan;
  String? phoneValue;
  String? phoneValid;
  String? addressValue;
  String? dataSourceName;
  String? vehicleDesc;
  int? enhLeadId;
  int? startDate;
  int? finalDate;
  String? colorFinal;
  String? statusFgc;
  String? plafondFgc;
  int? order;

  Leads(
      this.distId,
      this.distDate,
      this.expiredDate,
      this.recommendedBusinessUnit,
      this.officeCode,
      this.officeName,
      this.area,
      this.posId,
      this.posName,
      this.customerNo,
      this.customerMainNo,
      this.memberId,
      this.noFifgroupCard,
      this.lastBusinessUnit,
      this.gender,
      this.noPol,
      this.vehicleType,
      this.vehicleYear,
      this.statusLeadId,
      this.mobileNo01,
      this.mobileNo02,
      this.fixedPhoneArea,
      this.officePhoneArea,
      this.collectMobileNo01,
      this.collectMobileNo02,
      this.fixedPhone,
      this.officePhone,
      this.customerName,
      this.nik,
      this.birthPlace,
      this.birthDate,
      this.job,
      this.subOccupation,
      this.address,
      this.rtRw,
      this.province,
      this.city,
      this.kecamatan,
      this.kelurahan,
      this.zipCode,
      this.addressSurvey,
      this.rtRwSurvey,
      this.provinceSurvey,
      this.citySurvey,
      this.kecamatanSurvey,
      this.kelurahanSurvey,
      this.zipCodeSurvey,
      this.dataSource,
      this.visitDate,
      this.flag,
      this.platform,
      this.followUp,
      this.phoneNo05,
      this.phoneNo06,
      this.followUpResult,
      this.businessUnit,
      this.loanAmount,
      this.loanPurpose,
      this.objectCategory,
      this.object,
      this.suppCodeName,
      this.anotherAsset,
      this.top,
      this.remark,
      this.img01,
      this.img02,
      this.img03,
      this.img04,
      this.photoKunjungan,
      this.timePhotoKunjungan,
      this.lat6,
      this.long6,
      this.alamatLatLong,
      this.time01,
      this.time02,
      this.time03,
      this.time04,
      this.statusTask,
      this.lastPage,
      this.source,
      this.dateModified,
      this.lat1,
      this.lat2,
      this.long1,
      this.long2,
      this.currentMce,
      this.slaLeadValue,
      this.slaOpportunityValue,
      this.contractNumber,
      this.flagOffline,
      this.branchId,
      this.branchName,
      this.bpkbName,
      this.priority,
      this.flagSubmitDraft,
      this.dateSlaCreated,
      this.remarkUh,
      this.hasilFuUh,
      this.tipe,
      this.merk,
      this.keterangan,
      this.alamatEnh,
      this.newAlamat,
      this.cekMotor,
      this.tahunMotor,
      this.potensiKetertarikan,
      this.phoneValue,
      this.phoneValid,
      this.addressValue,
      this.dataSourceName,
      this.vehicleDesc,
      this.enhLeadId,
      this.startDate,
      this.finalDate,
      this.colorFinal,
      this.statusFgc,
      this.plafondFgc,
      this.order);

  factory Leads.fromJson(Map<String, dynamic> json) => _$LeadsFromJson(json);

  Map<String, dynamic> toJson() => _$LeadsToJson(this);
}

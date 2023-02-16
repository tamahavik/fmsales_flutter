import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leads.g.dart';

@JsonSerializable()
@collection
class Leads {
  @JsonKey(includeFromJson: false, includeToJson: false)
  Id id = Isar.autoIncrement;

  /*
  * from API begin
  */
  @JsonKey(defaultValue: '')
  String recommendedBusinessUnit;
  @JsonKey(defaultValue: '')
  String branchId;
  @JsonKey(defaultValue: '')
  String branchName;
  @JsonKey(defaultValue: '')
  String area;
  @JsonKey(defaultValue: '')
  String posId;
  @JsonKey(defaultValue: '')
  String posName;
  @JsonKey(defaultValue: '')
  String officeCode;
  @JsonKey(defaultValue: '')
  String officeName;
  @JsonKey(defaultValue: '')
  String custNo;
  @JsonKey(defaultValue: '')
  String custMainNo;
  @JsonKey(defaultValue: '')
  String memberId;
  @JsonKey(defaultValue: '')
  String noFifgroupCard;
  @JsonKey(defaultValue: '')
  String lastBusinessUnit;
  @JsonKey(defaultValue: '')
  String noPol;
  @JsonKey(defaultValue: '')
  String vehicleType;
  @JsonKey(defaultValue: '')
  String vehicleYear;
  @JsonKey(defaultValue: '')
  String bpkbName;
  @JsonKey(defaultValue: '')
  String mobileNoOne;
  @JsonKey(defaultValue: '')
  String mobileNoTwo;
  @JsonKey(defaultValue: '')
  String collectmobileNoOne;
  @JsonKey(defaultValue: '')
  String collectmobileNoTwo;
  @JsonKey(defaultValue: '')
  String fixedPhoneArea;
  @JsonKey(defaultValue: '')
  String fixedPhone;
  @JsonKey(defaultValue: '')
  String officePhoneArea;
  @JsonKey(defaultValue: '')
  String officePhone;
  @JsonKey(defaultValue: '')
  String custName;
  @JsonKey(defaultValue: '')
  String nik;
  @JsonKey(defaultValue: 0)
  int birthDate;
  @JsonKey(defaultValue: '')
  String birthPlace;
  @JsonKey(defaultValue: '')
  String job;
  @JsonKey(defaultValue: '')
  String subOccupation;
  @JsonKey(defaultValue: '')
  String address;
  @JsonKey(defaultValue: '')
  String rtRw;
  @JsonKey(defaultValue: '')
  String province;
  @JsonKey(defaultValue: '')
  String city;
  @JsonKey(defaultValue: '')
  String kecamatan;
  @JsonKey(defaultValue: '')
  String kelurahan;
  @JsonKey(defaultValue: '')
  String zipCode;
  @JsonKey(defaultValue: '')
  String subZipCode;
  @JsonKey(defaultValue: 0)
  int visitDate;
  @JsonKey(defaultValue: '')
  String dataSource;
  @JsonKey(defaultValue: '')
  String flag;
  @JsonKey(defaultValue: '')
  String platform;
  @JsonKey(defaultValue: '')
  String gender;
  @JsonKey(defaultValue: '')
  String contractNumber;
  @JsonKey(defaultValue: '')
  String priority;
  @JsonKey(defaultValue: 0)
  int statusLeadId;
  @JsonKey(defaultValue: 0)
  int lasStatusLeadId;
  @JsonKey(defaultValue: '')
  String hasilFu;
  @JsonKey(defaultValue: '')
  String remarkUh;
  @JsonKey(defaultValue: '')
  String hasilFuUh;
  @JsonKey(defaultValue: 0)
  int enhLeadId;
  @JsonKey(defaultValue: '')
  String dataSourceName;
  @JsonKey(defaultValue: '')
  String vehicleDesc;
  @JsonKey(defaultValue: 0)
  int startDate;
  @JsonKey(defaultValue: 0)
  int firstConco;
  @JsonKey(defaultValue: '')
  String colorFinal;
  @JsonKey(defaultValue: '')
  String alamatGenerated;

  /*
  * from user input
  */
  @JsonKey(defaultValue: '')
  String addressSurvey;
  @JsonKey(defaultValue: '')
  String rtRwSurvey;
  @JsonKey(defaultValue: '')
  String provinceSurvey;
  @JsonKey(defaultValue: '')
  String citySurvey;
  @JsonKey(defaultValue: '')
  String kecamatanSurvey;
  @JsonKey(defaultValue: '')
  String kelurahanSurvey;
  @JsonKey(defaultValue: '')
  String zipCodeSurvey;
  @JsonKey(defaultValue: '')
  String followUp;
  @JsonKey(defaultValue: '')
  String phoneNo05;
  @JsonKey(defaultValue: '')
  String phoneNo06;
  @JsonKey(defaultValue: '')
  String followUpResult;
  @JsonKey(defaultValue: '')
  String businessUnit;
  @JsonKey(defaultValue: 0)
  int loanAmount;
  @JsonKey(defaultValue: '')
  String loanPurpose;
  @JsonKey(defaultValue: '')
  String objectCategory;
  @JsonKey(defaultValue: '')
  String object;
  @JsonKey(defaultValue: '')
  String suppCodeName;
  @JsonKey(defaultValue: '')
  String anotherAsset;
  @JsonKey(defaultValue: 0)
  int top;
  @JsonKey(defaultValue: '')
  String remark;
  @JsonKey(defaultValue: '')
  String img01;
  @JsonKey(defaultValue: '')
  String img02;
  @JsonKey(defaultValue: '')
  String img03;
  @JsonKey(defaultValue: '')
  String img04;
  @JsonKey(defaultValue: '')
  String photoKunjungan;
  @JsonKey(defaultValue: 0)
  int timePhotoKunjungan;
  @JsonKey(defaultValue: 0.0)
  double lat6;
  @JsonKey(defaultValue: 0.0)
  double long6;
  @JsonKey(defaultValue: '')
  String alamatLatLong;
  @JsonKey(defaultValue: 0)
  int time01;
  @JsonKey(defaultValue: 0)
  int time02;
  @JsonKey(defaultValue: 0)
  int time03;
  @JsonKey(defaultValue: 0)
  int time04;
  @JsonKey(defaultValue: '')
  String statusTask;
  @JsonKey(defaultValue: 0)
  int lastPage = 0;
  @JsonKey(defaultValue: 0)
  int source;
  @JsonKey(defaultValue: 0)
  int dateModified;
  @JsonKey(defaultValue: 0)
  int lat1;
  @JsonKey(defaultValue: 0)
  int lat2;
  @JsonKey(defaultValue: 0)
  int long1;
  @JsonKey(defaultValue: 0)
  int long2;
  @JsonKey(defaultValue: '')
  String currentMce;
  @JsonKey(defaultValue: '')
  String slaLeadValue;
  @JsonKey(defaultValue: '')
  String slaOpportunityValue;
  @JsonKey(defaultValue: '')
  String flagOffline;
  @JsonKey(defaultValue: '')
  String flagSubmitDraft;
  @JsonKey(defaultValue: '')
  String dateSlaCreated;
  @JsonKey(defaultValue: '')
  String tipe;
  @JsonKey(defaultValue: '')
  String merk;
  @JsonKey(defaultValue: '')
  String keterangan;
  @JsonKey(defaultValue: '')
  String alamatEnh;
  @JsonKey(defaultValue: '')
  String newAlamat;
  @JsonKey(defaultValue: '')
  String cekMotor;
  @JsonKey(defaultValue: '')
  String tahunMotor;
  @JsonKey(defaultValue: '')
  String potensiKetertarikan;
  @JsonKey(defaultValue: '')
  String phoneValue;
  @JsonKey(defaultValue: '')
  String phoneValid;
  @JsonKey(defaultValue: '')
  String addressValue;
  @JsonKey(defaultValue: 0)
  int finalDate;
  @JsonKey(defaultValue: '')
  String statusFgc;
  @JsonKey(defaultValue: '')
  String plafondFgc;
  @JsonKey(defaultValue: 0)
  int order;


  Leads(
      this.recommendedBusinessUnit,
      this.branchId,
      this.branchName,
      this.area,
      this.posId,
      this.posName,
      this.officeCode,
      this.officeName,
      this.custNo,
      this.custMainNo,
      this.memberId,
      this.noFifgroupCard,
      this.lastBusinessUnit,
      this.noPol,
      this.vehicleType,
      this.vehicleYear,
      this.bpkbName,
      this.mobileNoOne,
      this.mobileNoTwo,
      this.collectmobileNoOne,
      this.collectmobileNoTwo,
      this.fixedPhoneArea,
      this.fixedPhone,
      this.officePhoneArea,
      this.officePhone,
      this.custName,
      this.nik,
      this.birthDate,
      this.birthPlace,
      this.job,
      this.subOccupation,
      this.address,
      this.rtRw,
      this.province,
      this.city,
      this.kecamatan,
      this.kelurahan,
      this.zipCode,
      this.subZipCode,
      this.visitDate,
      this.dataSource,
      this.flag,
      this.platform,
      this.gender,
      this.contractNumber,
      this.priority,
      this.statusLeadId,
      this.lasStatusLeadId,
      this.hasilFu,
      this.remarkUh,
      this.hasilFuUh,
      this.enhLeadId,
      this.dataSourceName,
      this.vehicleDesc,
      this.startDate,
      this.firstConco,
      this.colorFinal,
      this.alamatGenerated,
      this.addressSurvey,
      this.rtRwSurvey,
      this.provinceSurvey,
      this.citySurvey,
      this.kecamatanSurvey,
      this.kelurahanSurvey,
      this.zipCodeSurvey,
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
      this.flagOffline,
      this.flagSubmitDraft,
      this.dateSlaCreated,
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
      this.finalDate,
      this.statusFgc,
      this.plafondFgc,
      this.order);

  factory Leads.fromJson(Map<String, dynamic> json) => _$LeadsFromJson(json);

  Map<String, dynamic> toJson() => _$LeadsToJson(this);
}

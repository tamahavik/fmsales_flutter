import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:ufi/model/city.dart';
import 'package:ufi/model/kecamatan.dart';
import 'package:ufi/model/kelurahan.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/model/province.dart';
import 'package:ufi/presentation/today/model/pull_leads.dart';

@injectable
class MasterDatabase {
  final Isar _isar;

  MasterDatabase({required Isar isar}) : _isar = isar;

  /*
  * Leads
  */
  Future<void> deleteAllLeads() async {
    await _isar.leads.clear();
  }

  Future<List<Leads>> loadLeads() async {
    return await _isar.leads.where().findAll();
  }

  Future<Leads?> findByEnhLeadIdAndDataSource(
    int enhLeadId,
    String dataSource,
  ) async {
    return await _isar.leads
        .filter()
        .enhLeadIdEqualTo(enhLeadId)
        .and()
        .dataSourceEqualTo(dataSource)
        .findFirst();
  }

  Future<void> saveLeads(Leads leads) async {
    await _isar.writeTxn(() async => _isar.leads.put(leads));
  }

  Future<Leads?> pullDataLeads(PullLeads leads) async {
    if (leads.dataSource == 'C') {
      Leads? dbLeads = await _isar.leads
          .filter()
          .custNoEqualTo(leads.custNo)
          .and()
          .dataSourceEqualTo('C')
          .findFirst();
      return dbLeads;
    } else {
      Leads? dbLeads = await _isar.leads
          .filter()
          .custNameEqualTo(leads.custName)
          .and()
          .birthDateEqualTo(leads.birthDate)
          .findFirst();
      return dbLeads;
    }
  }

  Future<void> deleteLeadsById(Id id) async {
    await _isar.writeTxn(() async => await _isar.leads.delete(id));
  }

  Future<String> generatedAlamat(Leads leads) async {
    var kelurahan = await _isar.kelurahans
        .filter()
        .kelCodeEqualTo(leads.kelurahan)
        .findFirst();
    var kecamatan = await _isar.kecamatans
        .filter()
        .kecCodeEqualTo(leads.kecamatan)
        .findFirst();
    var city =
        await _isar.citys.filter().cityCodeEqualTo(leads.city).findFirst();
    var province = await _isar.provinces
        .filter()
        .provCodeEqualTo(leads.province)
        .findFirst();
    String address = '${leads.address}, ${leads.rtRw} ${kelurahan?.kelurahan ?? ''} ${kecamatan?.kecamatan ?? ''} ${city?.city ?? ''} ${province?.provinsi ?? ''}';
    return address.trim();
  }
}

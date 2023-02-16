import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:ufi/model/city.dart';
import 'package:ufi/model/kecamatan.dart';
import 'package:ufi/model/kelurahan.dart';
import 'package:ufi/model/leads.dart';
import 'package:ufi/model/province.dart';

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
    return '${leads.address}, ${leads.rtRw} ${kelurahan?.kelurahan} ${kecamatan?.kecamatan} ${city?.city} ${province?.provinsi}';
  }
}

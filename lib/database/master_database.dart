import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:ufi/model/leads.dart';

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
}

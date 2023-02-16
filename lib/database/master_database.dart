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
}

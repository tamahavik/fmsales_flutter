import 'package:isar/isar.dart';
import 'package:ufi/model/category.dart';
import 'package:ufi/model/city.dart';
import 'package:ufi/model/holiday.dart';
import 'package:ufi/model/kecamatan.dart';
import 'package:ufi/model/kelurahan.dart';
import 'package:ufi/model/model.dart';
import 'package:ufi/model/occupation.dart';
import 'package:ufi/model/parameter.dart';
import 'package:ufi/model/parameter_priority.dart';
import 'package:ufi/model/priority_leads.dart';
import 'package:ufi/model/province.dart';
import 'package:ufi/model/sla_color.dart';
import 'package:ufi/model/sub_occupation.dart';
import 'package:ufi/model/time_setup.dart';
import 'package:ufi/model/zipcode.dart';

class Database {
  static Future<Isar> init() async {
    if (Isar.getInstance() == null) {
      return await Isar.open([
        CategorySchema,
        CitySchema,
        HolidaySchema,
        KecamatanSchema,
        KelurahanSchema,
        ModelSchema,
        OccupationSchema,
        ParameterSchema,
        ParameterPrioritySchema,
        PriorityLeadsSchema,
        ProvinceSchema,
        SlaColorSchema,
        SubOccupationSchema,
        TimeSetupSchema,
        ZipCodeSchema,
      ], name: Isar.defaultName);
    }
    return await Future.value(Isar.getInstance());
  }
}

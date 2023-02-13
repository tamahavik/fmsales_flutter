import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/category.dart';
import 'package:ufi/model/city.dart';
import 'package:ufi/model/holiday.dart';
import 'package:ufi/model/kecamatan.dart';
import 'package:ufi/model/kelurahan.dart';
import 'package:ufi/model/model.dart';
import 'package:ufi/model/occupation.dart';
import 'package:ufi/model/parameter.dart';
import 'package:ufi/model/priority_leads.dart';
import 'package:ufi/model/province.dart';
import 'package:ufi/model/sla_color.dart';
import 'package:ufi/model/sub_occupation.dart';
import 'package:ufi/model/time_setup.dart';
import 'package:ufi/model/zipcode.dart';
import 'package:ufi/services/api_variable.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiSyncService {
  final Dio dio;
  ApiSyncService({required this.dio});

  Future<Either<String, Parameter>> versionApiSync() async {
    try {
      Response response = await dio.get(SYNC_APP_VERSION);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(Parameter.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Parameter>>> lovApiSync() async {
    try {
      Response response = await dio.get(SYNC_LOV);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Parameter.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Occupation>>> occupationApiSync() async {
    try {
      Response response = await dio.get(SYNC_OCCUPATION);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Occupation.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<SubOccupation>>> subOccupationApiSync() async {
    try {
      Response response = await dio.get(SYNC_SUB_OCCUPATION);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => SubOccupation.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Category>>> categoryApiSync() async {
    try {
      Response response = await dio.get(SYNC_CATEGORY);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Category.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Model>>> modelApiSync() async {
    try {
      Response response = await dio.get(SYNC_MODEL);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Model.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Province>>> provinceApiSync(String date) async {
    try {
      Response response =
          await dio.get(SYNC_PROVINCE.replaceAll("{date}", date));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Province.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<City>>> cityApiSync(String date) async {
    try {
      Response response = await dio.get(SYNC_CITY.replaceAll('{date}', date));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => City.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Kecamatan>>> kecamatanApiSync(String date) async {
    try {
      Response response =
          await dio.get(SYNC_KECAMATAN.replaceAll('{date}', date));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Kecamatan.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Kelurahan>>> kelurahanApiSync(String date) async {
    try {
      Response response =
          await dio.get(SYNC_KELURAHAN.replaceAll('{date}', date));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Kelurahan.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<ZipCode>>> zipCodeApiSync(String date) async {
    try {
      Response response =
          await dio.get(SYNC_ZIPCODE.replaceAll('{date}', date));
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => ZipCode.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, Parameter>> slaOpportunityApiSync() async {
    try {
      Response response = await dio.get(SYNC_SLA_OPPORTUNITY);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(Parameter.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<PriorityLeads>>> priorityLeadsApiSync() async {
    try {
      Response response = await dio.get(SYNC_PRIORITY_LEADS);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => PriorityLeads.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<SlaColor>>> slaColorApiSync() async {
    try {
      Response response = await dio.get(SYNC_SLA_COLOR);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => SlaColor.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, List<Holiday>>> holidayApiSync() async {
    try {
      Response response = await dio.get(SYNC_HOLIDAY);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        var obj = ApiResult.processJson(result.result) as List;
        return right(obj.map((e) => Holiday.fromJson(e)).toList());
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, TimeSetup>> timeSetupApiSync() async {
    try {
      Response response = await dio.get(SYNC_TIME_SETUP);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(TimeSetup.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, Parameter>> startEndLocationApiSync() async {
    try {
      Response response = await dio.get(SYNC_START_END_LOCATION);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(Parameter.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }

  Future<Either<String, Parameter>> invervalLocationApiSync() async {
    try {
      Response response = await dio.get(SYNC_INTERVAL_LOCATION);
      ApiResult result = ApiResult.fromJson(response.data);
      if (result.message == 'OK') {
        return right(Parameter.fromJson(ApiResult.processJson(result.result)));
      }
      return left(result.result.toString());
    } on DioError catch (e) {
      return left(e.message);
    }
  }
}

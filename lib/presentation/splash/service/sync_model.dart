import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/model.dart';
import 'package:ufi/presentation/splash/service/synchronize.dart';
import 'package:ufi/services/api_variable.dart';

class SyncModel extends Synchronize {
  SyncModel({required super.dio});

  Future<Either<String, List<Model>>> process() async {
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

  Future<Either<String, List<Model>>> readJson() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/object-model.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => Model.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }
}

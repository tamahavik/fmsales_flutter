import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:ufi/model/api_result.dart';
import 'package:ufi/model/province.dart';
import 'package:ufi/presentation/splash/service/synchronize.dart';
import 'package:ufi/services/api_variable.dart';

class SyncProvince extends Synchronize {
  SyncProvince({required super.dio});

  Future<Either<String, List<Province>>> process(String date) async {
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

  Future<Either<String, List<Province>>> readJson() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/province.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => Province.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }
}

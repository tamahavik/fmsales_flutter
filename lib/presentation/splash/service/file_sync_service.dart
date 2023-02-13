import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:ufi/model/category.dart';
import 'package:ufi/model/city.dart';
import 'package:ufi/model/kecamatan.dart';
import 'package:ufi/model/kelurahan.dart';
import 'package:ufi/model/model.dart';
import 'package:ufi/model/occupation.dart';
import 'package:ufi/model/province.dart';
import 'package:ufi/model/sub_occupation.dart';
import 'package:ufi/model/zipcode.dart';

@injectable
class FileSyncService {
  Future<Either<String, List<Category>>> categoryFileSync() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/object-group-model.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => Category.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }

  Future<Either<String, List<City>>> cityFileSync() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/cities.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => City.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }

  Future<Either<String, List<Kecamatan>>> kecamatanFileSync() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/kecamatan.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => Kecamatan.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }

  Future<Either<String, List<Kelurahan>>> kelurahanFileSync() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/kelurahan.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => Kelurahan.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }

  Future<Either<String, List<Model>>> modelFileSync() async {
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

  Future<Either<String, List<Occupation>>> occupationFileSync() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/occupation.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => Occupation.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }

  Future<Either<String, List<Province>>> provinceFileSync() async {
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

  Future<Either<String, List<SubOccupation>>> subOccupationFileSync() async {
    try {
      final String load =
          await rootBundle.loadString('assets/init/sub-occupation.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => SubOccupation.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }

  Future<Either<String, List<ZipCode>>> zipCodeFileSync() async {
    try {
      final String load = await rootBundle.loadString('assets/init/zip.json');
      final json = await jsonDecode(load) as List;
      var data = json.map((e) => ZipCode.fromJson(e)).toList();
      return right(data);
    } catch (e) {
      return left("Terjadi kesalahan");
    }
  }
}

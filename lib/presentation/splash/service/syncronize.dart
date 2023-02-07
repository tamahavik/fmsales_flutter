import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ufi/services/dio_client.dart';

abstract class Syncronize<T> {
  final Dio dio = DioClient().dio;

  Future<Either<String, T>> process();
}

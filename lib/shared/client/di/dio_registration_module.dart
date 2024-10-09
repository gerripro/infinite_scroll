import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioRegisterModule {
  // TODO: baseUrls and other app configs should be passed as system variables
  Dio getDio(String baseUrl) =>
      Dio(BaseOptions(baseUrl: "https://pixabay.com"));
}
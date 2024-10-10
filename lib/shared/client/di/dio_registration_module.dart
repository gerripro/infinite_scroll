import 'package:dio/dio.dart';
import 'package:infinite_scroll/app/configs/app_config_module.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioRegisterModule {
  Dio getDio(AppConfiguration appConfiguration) {
    return Dio(BaseOptions(
        baseUrl: appConfiguration.apiUrl,
        queryParameters: {'key': appConfiguration.apiKey}));
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:infinite_scroll/app/configs/app_config_module.dart' as _i962;
import 'package:infinite_scroll/modules/navigation/router/navigation_register_module.dart'
    as _i305;
import 'package:infinite_scroll/modules/picture_gallery/clients/pictures_client.dart'
    as _i206;
import 'package:infinite_scroll/shared/client/di/dio_registration_module.dart'
    as _i125;
import 'package:infinite_scroll/shared/client/non_auth_client.dart' as _i564;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appRouterRegistrationModule = _$AppRouterRegistrationModule();
    final dioRegisterModule = _$DioRegisterModule();
    gh.singleton<_i962.AppConfiguration>(() => _i962.AppConfiguration());
    gh.lazySingleton<_i305.MyAppRouter>(
        () => appRouterRegistrationModule.appRouter);
    gh.factory<_i361.Dio>(
        () => dioRegisterModule.getDio(gh<_i962.AppConfiguration>()));
    gh.lazySingleton<_i206.PicturesClient>(
        () => _i206.PicturesClient(http: gh<_i361.Dio>()));
    gh.lazySingleton<_i564.NonAuthClient>(
        () => _i564.NonAuthClient(http: gh<_i361.Dio>()));
    return this;
  }
}

class _$AppRouterRegistrationModule extends _i305.AppRouterRegistrationModule {}

class _$DioRegisterModule extends _i125.DioRegisterModule {}

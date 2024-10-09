// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:infinite_scroll/modules/navigation/router/navigation_register_module.dart'
    as _i305;
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
    gh.lazySingleton<_i305.MyAppRouter>(
        () => appRouterRegistrationModule.appRouter);
    return this;
  }
}

class _$AppRouterRegistrationModule extends _i305.AppRouterRegistrationModule {}

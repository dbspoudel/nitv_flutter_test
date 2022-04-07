// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/source/remote_source.dart' as _i6;
import '../../data/source/sources_impl/remote_source_impl.dart' as _i7;
import '../../repository/i_news_repo.dart' as _i8;
import '../../repository/implementation/news_repo.dart' as _i9;
import '../app_config/app_config.dart' as _i3;
import 'modules.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt servicesLocator(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final diModules = _$DiModules();
  gh.singleton<_i3.AppConfig>(_i3.AppConfig());
  gh.singleton<_i4.Connectivity>(diModules.connectivity);
  gh.singleton<_i5.Dio>(diModules.dio);
  gh.lazySingleton<_i6.RemoteSource>(() => _i7.RemoteSourceImpl(
      dio: get<_i5.Dio>(),
      connectivity: get<_i4.Connectivity>(),
      appConfig: get<_i3.AppConfig>()));
  gh.lazySingleton<_i8.NewsRepo>(
      () => _i9.NewsRepoImp(remoteSource: get<_i6.RemoteSource>()));
  return get;
}

class _$DiModules extends _i10.DiModules {}

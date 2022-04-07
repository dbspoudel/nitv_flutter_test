import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DiModules {
  @Singleton()
  Dio get dio => Dio();

  @Singleton()
  Connectivity get connectivity => Connectivity();
}

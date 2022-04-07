import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nitv_flutter_test/core/app_logger.dart';
import 'package:nitv_flutter_test/core/exceptions/all_dio_exceptions.dart';
import 'package:nitv_flutter_test/core/exceptions/app_exceptions.dart';

import '../remote_source.dart';

@LazySingleton(as: RemoteSource)
class RemoteSourceImpl implements RemoteSource {
  Dio dio;
  Connectivity connectivity;

  RemoteSourceImpl({
    required this.dio,
    required this.connectivity,
  }) {
    _enable();
  }

  @override
  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic> queryParam = const {},
  }) async {
    try {
      AppLogger.i('$url /n $queryParam', message: 'GET request for:');
      final response = await dio.get(
        url,
        queryParameters: queryParam,
      );
      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      }
      return {'data': response.data};
    } on DioError catch (e) {
      AppLogger.e(
        'message==> ${e.message}\nresponse==> ${e.response}}',
        message: 'Remote Source Error(GET)',
      );
      throw handleServerException(e);
    }
  }

  void _enable() {
    dio.interceptors.clear();
    final BaseOptions options = BaseOptions(
      connectTimeout: 30000,
      receiveTimeout: 10000,
    );
    dio.options
      ..connectTimeout = options.connectTimeout
      ..receiveTimeout = options.receiveTimeout;
    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (requestOption, handler) async {
          final connection = await connectivity.checkConnectivity();
          if (connection == ConnectivityResult.none) {
            handler.reject(DioError(requestOptions: requestOption, error: NoInternetException));
          } else {
            final token = authCubit.userSession?.accessToken ?? '';
            requestOption.baseUrl = appConfig.configModel.baseUrl;
            requestOption.headers['Authorization'] = 'Bearer $token';
            return handler.next(requestOption);
          }
        },
        onResponse: (response, handler) {
          AppLogger.i(response, message: 'RESPONSE: ');
          return handler.next(response);
        },
        onError: (error, handler) async {
          handler.next(error);
        },
      ),
    );
  }
}

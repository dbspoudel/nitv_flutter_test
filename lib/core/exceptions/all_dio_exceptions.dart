import 'package:dio/dio.dart';

import 'app_exceptions.dart';

AppException handleServerException(DioError e) {
  switch (e.type) {
    case DioErrorType.connectTimeout:
      return ConnectionTimeout();
    case DioErrorType.receiveTimeout:
      return ReceiveTimeout();
    case DioErrorType.sendTimeout:
      return SendTimeout();
    case DioErrorType.other:
      if (e.error == NoInternetException) {
        return NoInternetException(message: 'Check your internet connection.');
      } else {
        return AppException(message: 'Something went wrong!');
      }
    case DioErrorType.response:
      final int? statusCode = e.response!.statusCode;
      final statusMessage = e.response!.data['response']['message'] ?? e.response!.statusMessage;
      switch (statusCode) {
        case 400:
          return BadRequestException(message: statusMessage);
        case 401:
          return UnauthorizedException(message: statusMessage);
        case 403:
          return ForbiddenException(message: statusMessage);
        case 404:
          return ResourceNotFoundException(message: statusMessage);
        case 405:
          return MethodNotAllowedException(message: statusMessage);
        case 409:
          return ConflictException(message: statusMessage);
        case 415:
          return UnsupportedMediaTypeException(message: statusMessage);
        case 500:
          return InternalServerErrorException(message: statusMessage);
        case 502:
          return BadGatewayException(message: statusMessage);
        default:
          return AppException(
            statusCode: statusCode,
            message: statusMessage,
          );
      }
    default:
      return AppException(message: e.error.toString());
  }
}

extension AppExceptionConverter on AppException {
  AppException fromDioError(DioError e) => handleServerException(e);
}

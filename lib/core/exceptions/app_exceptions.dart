import 'dart:collection';

class AppException implements Exception {
  final String message;
  Map<String, dynamic>? errors = HashMap<String, dynamic>();
  int? statusCode;

  AppException({
    this.message = 'Something went wrong!',
    this.errors,
    this.statusCode,
  });
}
class NoDataException extends AppException {
  NoDataException({String? message, dynamic error, int? statusCode})
      : super(message: message ?? 'Data not found', statusCode: 0);
}

class ConnectionTimeout extends AppException {
  ConnectionTimeout() : super(message: 'Connection Timeout', statusCode: 0);
}

class ReceiveTimeout extends AppException {
  ReceiveTimeout() : super(message: 'Receive Timeout', statusCode: 0);
}

class SendTimeout extends AppException {
  SendTimeout() : super(message: 'Send Timeout', statusCode: 0);
}

class NoInternetException extends AppException {
  NoInternetException({String? message, dynamic error, int? statusCode})
      : super(message: message ?? 'No Internet', statusCode: 0);
}

//Status code: 400
class BadRequestException extends AppException {
  BadRequestException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? "Bad request",
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 401
class UnauthorizedException extends AppException {
  UnauthorizedException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 403
class ForbiddenException extends AppException {
  ForbiddenException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 404
class ResourceNotFoundException extends AppException {
  ResourceNotFoundException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 405
class MethodNotAllowedException extends AppException {
  MethodNotAllowedException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 409
class ConflictException extends AppException {
  ConflictException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 415
class UnsupportedMediaTypeException extends AppException {
  UnsupportedMediaTypeException(
      {String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 500
class InternalServerErrorException extends AppException {
  InternalServerErrorException(
      {String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

//Status code: 502
class BadGatewayException extends AppException {
  BadGatewayException({String? message, dynamic error, int? statusCode})
      : super(
          message: message ?? 'Exception',
          errors: error,
          statusCode: statusCode,
        );
}

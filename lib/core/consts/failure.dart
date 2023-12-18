import 'package:dio/dio.dart';

abstract class failure {
  late var message_error;
  failure(this.message_error);
}

class server_failure extends failure {
  server_failure(super.message_error);

  factory server_failure.dioerror(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return server_failure("connection timeout");
      case DioExceptionType.sendTimeout:
        return server_failure('send timeout');
      case DioExceptionType.receiveTimeout:
        return server_failure('receive timeout');
      case DioExceptionType.badCertificate:
        return server_failure('bad certificate');
      case DioExceptionType.badResponse:
        return server_failure('bad response');
      case DioExceptionType.cancel:
        return server_failure('request cancelled');
      case DioExceptionType.connectionError:
        return server_failure('connection error');
      // case DioExceptionType.unknown:
      //   return server_failure('unknown');

      default:
        return server_failure("pleas try again ");
    }
  }
  factory server_failure.response_error(int? status, dynamic response) {
    if (status == 400 || status == 401 || status == 403) {
      return server_failure(response['error']['message']);
    } else if (status == 404) {
      return server_failure("Your Request not Found, please try later");
    }
    return server_failure("Opps idon't no what happen");
  }
}

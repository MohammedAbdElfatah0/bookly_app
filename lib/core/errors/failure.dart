import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServiceFailure extends Failure {
  ServiceFailure({required super.errMessage});
  factory ServiceFailure.formDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure(errMessage: "Connection Timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServiceFailure(errMessage: "Send Timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServiceFailure(errMessage: "Receive Timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServiceFailure(errMessage: "Bad Certificate from ApiServer");
      case DioExceptionType.badResponse:
        return ServiceFailure.formResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return ServiceFailure(errMessage: "Request to ApiServer was cancelled");
      case DioExceptionType.connectionError:
        return ServiceFailure(errMessage: "No Internet Connection");

      case DioExceptionType.unknown:
        return ServiceFailure(
          errMessage: "Unexpected Error, Please try again!",
        );
    }
  }

  factory ServiceFailure.formResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServiceFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServiceFailure(
        errMessage: "Your request not found, Please try later!",
      );
    } else if (statusCode == 500) {
      return ServiceFailure(
        errMessage: "Internal Server error, Please try later!",
      );
    } else {
      return ServiceFailure(
        errMessage: "Oops, Something went wrong, Please try again!",
      );
    }
  }
}

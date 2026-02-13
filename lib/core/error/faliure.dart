import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Faliure {
  final String message;
  final IconData icon;
  final int statusCode;

  const Faliure(this.icon, {required this.message, required this.statusCode});
}

class ServerFaliure extends Faliure {
  ServerFaliure(super.icon,
      {required super.message, required super.statusCode});
  factory ServerFaliure.fromdioexception(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionError:
        return ServerFaliure(
          Icons.wifi_off,
          message:
              "Connection failed. Please check your internet connection and try again.",
          statusCode: 0,
        );
      case DioExceptionType.connectionTimeout:
        return ServerFaliure(
          Icons.timer_off,
          message: "Connection timed out. Please try again later.",
          statusCode: 0,
        );
      case DioExceptionType.sendTimeout:
        return ServerFaliure(
          Icons.timer_off,
          message: "Request timed out while sending data. Please try again.",
          statusCode: 0,
        );
      case DioExceptionType.receiveTimeout:
        return ServerFaliure(
          Icons.timer_off,
          message: "Response timed out. Please try again.",
          statusCode: 0,
        );

      case DioExceptionType.cancel:
        return ServerFaliure(
          Icons.cancel,
          message: "Request was cancelled.",
          statusCode: 0,
        );
      case DioExceptionType.badResponse:
        final statusCode = dioerror.response?.statusCode ?? 0;
        String message;

        switch (statusCode) {
          case 400:
            message = "Bad request. Please check your input and try again.";
          case 401:
            message = "Unauthorized. Please login and try again.";
          case 403:
            message =
                "Access forbidden. You don't have permission for this action.";
          case 404:
            message = "Resource not found. Please check the request URL.";
          case 500:
            message = "Internal server error. Please try again later.";
          case 502:
            message = "Bad gateway. Our servers are experiencing issues.";
          case 503:
            message = "Service unavailable. Please try again later.";
          default:
            message =
                "Received an invalid response from the server (Status $statusCode).";
        }

        return ServerFaliure(
          Icons.error_outline,
          message: message,
          statusCode: statusCode,
        );
      case DioExceptionType.unknown:
        if (dioerror.message!.contains('SocketException')) {
          return ServerFaliure(
            Icons.wifi_off,
            message:
                "No internet connection. Please check your network settings.",
            statusCode: 0,
          );
        }
        return ServerFaliure(
          Icons.error_outline,
          message: "An unexpected error occurred. Please try again.",
          statusCode: 0,
        );
      default:
        return ServerFaliure(
          Icons.error_outline,
          message: "An unknown error occurred. Please try again.",
          statusCode: 0,
        );
    }
  }
}

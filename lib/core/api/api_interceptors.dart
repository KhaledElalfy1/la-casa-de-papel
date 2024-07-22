import 'package:dio/dio.dart';


class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // send header of api here

    super.onRequest(options, handler);
  }
}

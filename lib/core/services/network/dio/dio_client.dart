import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/constants/api_constants.dart';

import '../../../constants/time_constants.dart';
import 'dio_interceptor.dart';

class DioClient {
  final dio = createDio();

  DioClient._internal();

  static final _singleton = DioClient._internal();

  factory DioClient() => _singleton;

  static Dio createDio() {
    var dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      receiveTimeout: Duration(seconds: kTime),
      connectTimeout: Duration(seconds: kTime),
      sendTimeout: Duration(seconds: kTime),
    ));

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });
    return dio;
  }
}

final dioClientProvider = Provider<Dio>((ref) {
  return DioClient().dio;
});

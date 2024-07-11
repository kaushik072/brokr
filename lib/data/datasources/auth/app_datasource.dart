import 'package:brokr/data/datasources/auth/app_api.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/dio.dart';

class AppDataSource {
  final api =
      AppApi(Dio(BaseOptions(contentType: 'application/json', validateStatus: ((status) => true)))
        ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
        )));

  Future<HttpResponse<dynamic>> loginUser({required Map<String, dynamic> data}) async {
    var res = await api.loginUser(data);
    return res;
  }

  Future<HttpResponse<dynamic>> getListedCars({required Map<String, dynamic> data}) async {
    var res = await api.getListedCars(data);
    return res;
  }
}

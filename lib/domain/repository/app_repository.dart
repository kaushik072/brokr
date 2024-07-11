import 'package:retrofit/dio.dart';

abstract class AppRepository {
  Future<HttpResponse<dynamic>> loginUser({required Map<String, dynamic> data});
  Future<HttpResponse<dynamic>> getListedCars({required Map<String, dynamic> data});
}

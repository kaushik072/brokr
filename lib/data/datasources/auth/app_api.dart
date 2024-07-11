

import 'package:brokr/utils/app_strings.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: AppStrings.baseUrl)
abstract class AppApi {
  factory AppApi(Dio dio) = _AppApi;

  @POST('api/api/auth/login')
  @MultiPart()
  Future<HttpResponse> loginUser(@Part() Map<String, dynamic> data);

  @POST('api/api/get_listed_cars')
  @MultiPart()
  Future<HttpResponse> getListedCars(@Part() Map<String, dynamic> data);
}

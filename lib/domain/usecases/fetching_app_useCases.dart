import 'package:retrofit/dio.dart';

import '../repository/app_repository.dart';

class FetchingAppUseCases {
  final AppRepository repository;

  FetchingAppUseCases(this.repository);

  Future<HttpResponse<dynamic>> loginUser({required Map<String, dynamic> data}) {
    return repository.loginUser(data: data);
  }

  Future<HttpResponse<dynamic>> getListedCars({required Map<String, dynamic> data}) {
    return repository.getListedCars(data: data);
  }
}

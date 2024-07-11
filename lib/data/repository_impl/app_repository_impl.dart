import 'package:brokr/data/datasources/auth/app_datasource.dart';
import 'package:brokr/domain/repository/app_repository.dart';
import 'package:retrofit/dio.dart';

class AppRepositoryImpl implements AppRepository {
  final AppDataSource dataSource;

  AppRepositoryImpl(this.dataSource);

  @override
  Future<HttpResponse<dynamic>> loginUser({required Map<String, dynamic> data}) {
    return dataSource.loginUser(data: data);
  }

  @override
  Future<HttpResponse<dynamic>> getListedCars({required Map<String, dynamic> data}) {
    return dataSource.getListedCars(data: data);
  }
}

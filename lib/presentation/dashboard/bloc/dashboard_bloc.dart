import 'package:bloc/bloc.dart';
import 'package:brokr/domain/models/car_model.dart';
import 'package:brokr/domain/usecases/fetching_app_useCases.dart';
import 'package:flutter/material.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final FetchingAppUseCases authUseCases;

  DashboardBloc(this.authUseCases) : super(DashboardInitial()) {
    on<UpdateTabIndex>(onChangeTab);
    on<GetListedCarsEvent>(onGetListedCars);
  }

  late final TabController tabController;
  int tabIndex = 0;
  CarModel carModel = CarModel();

  Future onGetListedCars(GetListedCarsEvent event, Emitter<DashboardState> emit) async {
    try {
      emit(GetCarsLoadingState());

      /// It's all are static value for now

      var res = await authUseCases.getListedCars(data: {
        "lat": "8.889651",
        "lng": "-68.192963",
        "radius": "9000",
        "pickup": "2024-01-20 09:00:00",
        "return": "2024-01-22 09:00:00",
        "price_min": "500",
        "price_max": "2000"
      });

      if (res.response.statusCode == 200) {
        carModel = CarModel.fromJson(res.response.data);
        emit(GetCarsSuccessState());
      } else {
        emit(GetCarsFailedState(res.data['message']));
      }
    } catch (e) {
      emit(GetCarsFailedState('Failed to load pokemon: $e'));
    }
  }

  Future onChangeTab(UpdateTabIndex event, Emitter<DashboardState> emit) async {
    tabIndex = event.index;
    emit(ChangeIndexState());
  }
}

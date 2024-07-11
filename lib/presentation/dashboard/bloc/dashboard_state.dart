part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardState {}

final class DashboardInitial extends DashboardState {}
class ChangeIndexState extends DashboardState {}

class GetCarsLoadingState extends DashboardState {}

class GetCarsSuccessState extends DashboardState {}

class GetCarsFailedState extends DashboardState {
  final String errorMsg;

  GetCarsFailedState(this.errorMsg);
}


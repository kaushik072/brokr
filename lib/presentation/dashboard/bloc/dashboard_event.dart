part of 'dashboard_bloc.dart';

@immutable
sealed class DashboardEvent {}
class GetListedCarsEvent extends DashboardEvent {}


class UpdateTabIndex extends DashboardEvent {
  final int index;

  UpdateTabIndex(this.index);
}

import 'package:auto_route/auto_route.dart';
import 'package:brokr/presentation/dashboard/view/dashboard_screen.dart';

import '../presentation/auth/view/login_screen.dart';
import '../presentation/home/view/splash_screen.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: DashboardRoute.page)
      ];
}

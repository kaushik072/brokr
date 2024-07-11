import 'package:auto_route/auto_route.dart';
import 'package:brokr/generated/assets.dart';
import 'package:brokr/route/app_route.dart';
import 'package:brokr/storage/storage_service.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  init() async {
    String? token = await StorageService.readData(key: StorageService.userToken);
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        if (token != null) {
          context.router.replaceAll([const DashboardRoute()]);
        } else {
          context.router.replaceAll([const LoginRoute()]);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.imagesAppLogo,
          height: 70,
        ),
      ),
    );
  }
}

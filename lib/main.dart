import 'package:brokr/data/datasources/auth/app_datasource.dart';
import 'package:brokr/data/repository_impl/app_repository_impl.dart';
import 'package:brokr/domain/repository/app_repository.dart';
import 'package:brokr/domain/usecases/fetching_app_useCases.dart';
import 'package:brokr/presentation/auth/bloc/auth_bloc.dart';
import 'package:brokr/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:brokr/presentation/home/home_bloc.dart';
import 'package:brokr/route/app_route.dart';
import 'package:brokr/utils/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';

import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppDataSource appDataSource = AppDataSource();
  final AppRepository authRepository = AppRepositoryImpl(appDataSource);
  await GetStorage.init();
  runApp(MyApp(
    appRepository: authRepository,
  ));
}

class MyApp extends StatelessWidget {
  final AppRepository? appRepository;

  MyApp({super.key, this.appRepository});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    ThemeData? theme = LightTheme().lightTheme;
    String locale = "en";
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(
            FetchingAppUseCases(appRepository!),
          ),
        ),
        BlocProvider<DashboardBloc>(
          create: (BuildContext context) => DashboardBloc(
            FetchingAppUseCases(appRepository!),
          ),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) =>
              HomeBloc()..add(OnChangeLanguageEvent(isInitialize: true)),
        ),
      ],
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is ThemeLoadSuccess) {
            theme = state.themeData;
          } else if (state is LanguageChangeSuccessState) {
            locale = state.locale;
          }
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Brokr',
            theme: theme,
            routerConfig: appRouter.config(),
            builder: EasyLoading.init(),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: Locale.fromSubtags(languageCode: locale),
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}

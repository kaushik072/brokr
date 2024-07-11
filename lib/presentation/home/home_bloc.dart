import 'package:bloc/bloc.dart';
import 'package:brokr/storage/storage_service.dart';
import 'package:brokr/utils/theme/dark_theme.dart';
import 'package:brokr/utils/theme/light_theme.dart';
import 'package:flutter/material.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<OnChangeLanguageEvent>(onChangeLanguage);
    on<ChangeAppThemeEvent>(onChangeAppTheme);
  }

  String? lang = 'en';
  String? theme = 'Light';

  Future onChangeLanguage(OnChangeLanguageEvent event, Emitter<HomeState> emit) async {
    emit(LanguageChangeLoadingState());
    if (event.isInitialize) {
      String? languageString = await StorageService.readData(key: StorageService.language);
      lang = languageString ?? "en";
    } else {
      lang = event.language;
      StorageService.writeData(key: StorageService.language, value: lang);
    }
    emit(LanguageChangeSuccessState(lang ?? "en"));
  }

  onChangeAppTheme(ChangeAppThemeEvent event, Emitter<HomeState> emit) async {
    ThemeData themeData = LightTheme().lightTheme!;
    theme = event.theme;
    if (event.theme == "Dark") {
      themeData = DarkTheme().darkTheme!;
    }
    emit(ThemeLoadSuccess(themeData));
  }
}

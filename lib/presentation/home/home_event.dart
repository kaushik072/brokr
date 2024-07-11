part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class ChangeAppThemeEvent extends HomeEvent {
  final String theme;

  ChangeAppThemeEvent({required this.theme});
}

class OnChangeLanguageEvent extends HomeEvent {
  final String? language;
  final bool isInitialize;

  OnChangeLanguageEvent({this.language, required this.isInitialize});
}

class OnChangeLanToggleEvent extends HomeEvent {
  final bool isEnglish;

  OnChangeLanToggleEvent(this.isEnglish);
}

class OnChangeThemeToggleEvent extends HomeEvent {

  final bool isLight;

  OnChangeThemeToggleEvent(this.isLight);
}

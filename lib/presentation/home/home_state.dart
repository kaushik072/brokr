part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

class ThemeLoadSuccess extends HomeState {
  final ThemeData themeData;

  ThemeLoadSuccess(this.themeData);
}

final class LanguageChangeLoadingState extends HomeState {}
final class LanguageChangeSuccessState extends HomeState {
  final String locale;
  LanguageChangeSuccessState(this.locale);
}

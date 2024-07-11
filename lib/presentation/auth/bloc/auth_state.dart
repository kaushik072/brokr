part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class ChangeVisibilityState extends AuthState {}
class ChangeRememberMeState extends AuthState {}

class LoginUserLoadingState extends AuthState {}

class LoginUserSuccessState extends AuthState {}

class LoginUserFailedState extends AuthState {
  final String errorMsg;

  LoginUserFailedState(this.errorMsg);
}

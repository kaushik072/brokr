part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginUserEvent extends AuthEvent {}

class PasswordVisibilityEvent extends AuthEvent {
  final bool isVisible;

  PasswordVisibilityEvent(this.isVisible);
}

class RememberMeEvent extends AuthEvent {
  final bool isRemember;

  RememberMeEvent(this.isRemember);
}

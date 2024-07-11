import 'package:bloc/bloc.dart';
import 'package:brokr/domain/models/login_model.dart';
import 'package:brokr/domain/usecases/fetching_app_useCases.dart';
import 'package:brokr/storage/storage_service.dart';
import 'package:flutter/material.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FetchingAppUseCases authUseCases;

  AuthBloc(this.authUseCases) : super(AuthInitial()) {
    on<LoginUserEvent>(onLoginUser);
    on<PasswordVisibilityEvent>(onPasswordVisibility);
    on<RememberMeEvent>(onChangeRemember);
  }

  LoginModel loginModel = LoginModel();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isVisible = true;
  bool isRemember = true;

  /// Email and password both are static value for now
  TextEditingController emailCtr = TextEditingController(text: "alexisrivasvilla@gmail.com");
  TextEditingController passwordCtr = TextEditingController(text: "Prueba123.");

  clearData(){
    isVisible = false;
    isRemember = true;
    emailCtr.clear();
    passwordCtr.clear();
  }

  Future onPasswordVisibility(PasswordVisibilityEvent event, Emitter<AuthState> emit) async {
    isVisible = event.isVisible;
    emit(ChangeVisibilityState());
  }

  Future onChangeRemember(RememberMeEvent event, Emitter<AuthState> emit) async {
    isRemember = event.isRemember;
    emit(ChangeRememberMeState());
  }

  Future onLoginUser(LoginUserEvent event, Emitter<AuthState> emit) async {
    try {
      emit(LoginUserLoadingState());

      /// It's all are static value for now

      var res = await authUseCases.loginUser(data: {
        "email": emailCtr.text.trim(),
        "password": passwordCtr.text.trim(),
        "os": "android",
        "type": "guest",
        "fcm_token": "DFGKNODFIJO34U89FGKNO",
        "language": "en"
      });

      if (res.response.statusCode == 200) {
        loginModel = LoginModel.fromJson(res.response.data);
        StorageService.writeData(
            key: StorageService.userToken, value: loginModel.data?.token ?? "");
        emit(LoginUserSuccessState());
      } else {
        emit(LoginUserFailedState(res.data['message']));
      }
    } catch (e) {
      emit(LoginUserFailedState('Failed to load pokemon: $e'));
    }
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:brokr/generated/assets.dart';
import 'package:brokr/presentation/auth/bloc/auth_bloc.dart';
import 'package:brokr/presentation/auth/widgets/login_form.dart';
import 'package:brokr/route/app_route.dart';
import 'package:brokr/utils/app_spacer.dart';
import 'package:brokr/utils/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../generated/l10n.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          final authBloc = context.read<AuthBloc>();
          if (state is LoginUserLoadingState) {
            EasyLoading.show();
          } else if (state is LoginUserSuccessState) {
            EasyLoading.showSuccess(authBloc.loginModel.message ?? "Login success!");
            authBloc.clearData();
            context.router.replaceAll([const DashboardRoute()]);
          } else if (state is LoginUserFailedState) {
            EasyLoading.showError(state.errorMsg);
          }
          return SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppSpacer(h: MediaQuery.of(context).size.height * 0.15),
                      Image.asset(
                        Assets.imagesAppLogo,
                        height: 70,
                      ),
                      const AppSpacer(h: 50),
                      const LoginForm(),
                      const AppSpacer(h: 20),
                      CommonButton(
                        textColor: Theme.of(context).colorScheme.inversePrimary,
                        btnText: S.of(context).login,
                        onTap: () {
                          if (authBloc.formKey.currentState?.validate() ?? false) {
                            authBloc.add(LoginUserEvent());
                          }
                        },
                      ),
                      const AppSpacer(h: 10),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: S.of(context).accountDes,
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.shadow)),
                            TextSpan(
                                text: " ${S.of(context).signUp}",
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.primary)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

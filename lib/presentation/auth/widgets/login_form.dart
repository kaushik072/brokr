import 'package:brokr/generated/l10n.dart';
import 'package:brokr/presentation/auth/bloc/auth_bloc.dart';
import 'package:brokr/utils/app_spacer.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:brokr/utils/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final authBloc = context.read<AuthBloc>();
        return Form(
          key: authBloc.formKey,
          child: Column(
            children: [
              CommonTextField(
                textEditingController: authBloc.emailCtr,
                label: S.of(context).email,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return S.of(context).enterEmail;
                  } else if (!validateEmail(value ?? "")) {
                    return S.of(context).emailValidation;
                  }
                  return null; //
                },
              ),
              const AppSpacer(h: 15),
              CommonTextField(
                label: S.of(context).password,
                textEditingController: authBloc.passwordCtr,
                obscureText: authBloc.isVisible,
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    return S.of(context).enterPassword;
                  } else if ((value?.trim().length ?? 0) < 8) {
                    return S.of(context).passwordValidation;
                  }
                  return null;
                },
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                      onTap: () {
                        authBloc.add(PasswordVisibilityEvent(!authBloc.isVisible));
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: authBloc.isVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                    child: Checkbox(
                      activeColor: Theme.of(context).colorScheme.primary,
                      checkColor: Theme.of(context).colorScheme.inversePrimary,
                      value: authBloc.isRemember,
                      onChanged: (value) {
                        authBloc.add(RememberMeEvent(value ?? false));
                      },
                    ),
                  ),
                  Expanded(
                      child: CommonTextView(S.of(context).rememberMe,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Theme.of(context).colorScheme.shadow))
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  bool validateEmail(String email) {
    // Regular expression pattern for email validation
    String emailPattern = r'^[\w-]+(\.[\w-]+)*@([a-z0-9A-Z-]+\.)+[a-zA-Z]{2,}$';
    RegExp regExp = RegExp(emailPattern);
    return regExp.hasMatch(email);
  }
}

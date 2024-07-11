import 'package:brokr/presentation/home/home_bloc.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final homeBloc = context.read<HomeBloc>();
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonTextView("Appearance",
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.shadow,
                      fontWeight: FontWeight.w800),
                  const Divider(),
                  Row(
                    children: [
                      CommonTextView("Language(EN)",
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.shadow,
                          fontWeight: FontWeight.w600),
                      const Spacer(),
                      Switch(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: homeBloc.lang == "en",
                        onChanged: (value) {
                          homeBloc.add(OnChangeLanguageEvent(
                              isInitialize: false, language: value ? "en" : "hi"));
                        },
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CommonTextView("Theme(Light)",
                          fontSize: 15,
                          color: Theme.of(context).colorScheme.shadow,
                          fontWeight: FontWeight.w600),
                      const Spacer(),
                      Switch(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: homeBloc.theme == "Light",
                        onChanged: (value) {
                          homeBloc.add(ChangeAppThemeEvent(
                            theme: value ? "Light" : "Dark",
                          ));
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

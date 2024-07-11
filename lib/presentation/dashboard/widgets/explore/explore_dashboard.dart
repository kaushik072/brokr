import 'package:brokr/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:brokr/presentation/dashboard/widgets/explore/car_listing_view.dart';
import 'package:brokr/presentation/dashboard/widgets/explore/header_card.dart';
import 'package:brokr/presentation/dashboard/widgets/explore/tab_bar.dart';
import 'package:brokr/utils/app_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExploreDashboard extends StatefulWidget {
  const ExploreDashboard({super.key});

  @override
  State<ExploreDashboard> createState() => _ExploreDashboardState();
}

class _ExploreDashboardState extends State<ExploreDashboard> {
  @override
  void initState() {
    context.read<DashboardBloc>().add(GetListedCarsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    AppSpacer(h: 30),
                    HeaderCardView(),
                    AppSpacer(h: 20),
                    TabBarWidgetView(),
                    AppSpacer(h: 5),
                    CardListingView()
                  ],
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.onSurface,
            )
          ],
        ),
      ),
    );
  }
}

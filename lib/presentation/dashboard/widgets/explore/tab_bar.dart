import 'package:brokr/generated/assets.dart';
import 'package:brokr/generated/l10n.dart';
import 'package:brokr/presentation/dashboard/bloc/dashboard_bloc.dart';
import 'package:brokr/utils/common_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarWidgetView extends StatefulWidget {
  const TabBarWidgetView({super.key});

  @override
  State<TabBarWidgetView> createState() => _TabBarWidgetViewState();
}

class _TabBarWidgetViewState extends State<TabBarWidgetView> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    final dashboardBloc = context.read<DashboardBloc>();
    dashboardBloc.tabController = TabController(length: 3, vsync: this);
    dashboardBloc.tabController.addListener(
      () {
        dashboardBloc.add(UpdateTabIndex(dashboardBloc.tabController.index));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        final dashboardBloc = context.read<DashboardBloc>();
        return SizedBox(
          height: 45,
          child: TabBar(
            controller: dashboardBloc.tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Theme.of(context).colorScheme.primary,
            unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
            splashBorderRadius: BorderRadius.circular(10),
            tabs: <Widget>[
              Tab(
                child: Column(
                  children: [
                    Image.asset(
                      Assets.imagesBoatFlat,
                      height: 25,
                      color: dashboardBloc.tabIndex == 0
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    CommonTextView(S.of(context).boats, fontSize: 12, fontWeight: FontWeight.w600),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Image.asset(
                      Assets.imagesCarFlat,
                      height: 25,
                      color: dashboardBloc.tabIndex == 1
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    CommonTextView(S.of(context).cars, fontSize: 12, fontWeight: FontWeight.w600),
                  ],
                ),
              ),
              Tab(
                child: Column(
                  children: [
                    Image.asset(
                      Assets.imagesHouseFlat,
                      height: 25,
                      color: dashboardBloc.tabIndex == 2
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSurface,
                    ),
                    CommonTextView(S.of(context).stays, fontSize: 12, fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

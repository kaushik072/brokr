import 'package:auto_route/annotations.dart';
import 'package:brokr/generated/assets.dart';
import 'package:brokr/generated/l10n.dart';
import 'package:brokr/presentation/dashboard/widgets/explore/explore_dashboard.dart';
import 'package:brokr/presentation/dashboard/widgets/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    buildNavItem({String? title, required String image}) {
      return ItemConfig(
        icon: ImageIcon(AssetImage(image)),
        title: title,
        textStyle: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 11),
        activeForegroundColor: Theme.of(context).colorScheme.primary,
        inactiveForegroundColor: Theme.of(context).colorScheme.onSurface,
      );
    }

    List<PersistentTabConfig> tabs() => [
          PersistentTabConfig(
            screen: const ExploreDashboard(),
            item: buildNavItem(title: S.of(context).explore, image: Assets.imagesButtomSearch),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: buildNavItem(title: S.of(context).favorite, image: Assets.imagesButtomFavorities),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: buildNavItem(title: S.of(context).trips, image: Assets.imagesButtomTrips),
          ),
          PersistentTabConfig(
            screen: Container(),
            item: buildNavItem(title: S.of(context).inbox, image: Assets.imagesButtomInbox),
          ),
          PersistentTabConfig(
            screen: const ProfileScreen(),
            item: buildNavItem(title: S.of(context).profile, image: Assets.imagesButtomProfile),
          ),
        ];

    return PersistentTabView(
      tabs: tabs(),
      navBarHeight: 59,
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}

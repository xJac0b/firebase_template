import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/router.gr.dart';
import '../../../../l10n/l10n.dart';
import '../../widgets/logout_button.dart';
import 'widgets/bottom_navigation.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        centerTitle: true,
        title: tabsRouter.activeIndex == 0
            ? Text(context.l10n.profilePageTitle)
            : Text(context.l10n.counterPageTitle),
        actions: const [
          LogoutButton(),
        ],
      ),
      routes: const [
        ProfileRoute(),
        CounterRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigation(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}

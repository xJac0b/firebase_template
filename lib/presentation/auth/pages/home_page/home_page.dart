import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'home_page_view.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePageView();
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../auth/widgets/logout_detector.dart';
import 'profile_page_view.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return const LogoutDetector(child: ProfilePageView());
  }
}

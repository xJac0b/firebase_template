import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../l10n/l10n.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      // showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.person),
          label: context.l10n.profilePageTitle,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.timer),
          label: context.l10n.counterPageTitle,
        ),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IntProperty('currentIndex', currentIndex))
      ..add(ObjectFlagProperty<Function(int p1)>.has('onTap', onTap));
  }
}

import 'package:flutter/material.dart';

extension MediaQueryX on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}

extension ThemeColorX on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}

extension ThemeTextX on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

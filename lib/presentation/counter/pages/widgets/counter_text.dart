import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  const CounterText(this.value, {super.key});
  final int value;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Text('$value', style: theme.textTheme.displayLarge);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('value', value));
  }
}

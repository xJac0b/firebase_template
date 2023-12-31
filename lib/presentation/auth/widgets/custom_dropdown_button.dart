import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/decorations.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    required this.items,
    this.prefixIcon,
    this.onChanged,
    this.value,
  });

  final List<String> items;
  final Widget? prefixIcon;
  final Function(String?)? onChanged;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: getInputDecoration(
        prefixIcon: prefixIcon,
      ),
      value: value ?? items.first,
      items: items
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Text(e),
            ),
          )
          .toList(),
      onChanged: onChanged ?? (_) {},
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(IterableProperty<String>('items', items))
      ..add(
        ObjectFlagProperty<Function(String? p1)?>.has('onChanged', onChanged),
      )
      ..add(StringProperty('value', value));
  }
}

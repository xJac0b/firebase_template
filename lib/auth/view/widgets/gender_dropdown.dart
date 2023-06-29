import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';
import 'custom_dropdown_button.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key, required this.maleInitial});
  final bool maleInitial;
  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('maleInitial', maleInitial));
  }
}

class _GenderDropdownState extends State<GenderDropdown> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    if (widget.maleInitial) {
      selected ??= context.l10n.genderMale;
    } else {
      selected ??= context.l10n.genderFemale;
    }

    return CustomDropdownButton(
      value: selected,
      items: [context.l10n.genderMale, context.l10n.genderFemale],
      prefixIcon: genderPrefixIcon(context, selected),
      onChanged: (el) {
        setState(() {
          selected = el;
        });
        if (el != null) {
          //new value
        }
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('selected', selected));
  }
}

Widget genderPrefixIcon(BuildContext context, String? current) {
  if (current == context.l10n.genderMale) {
    return const Icon(Icons.male);
  }
  if (current == context.l10n.genderFemale) {
    return const Icon(Icons.female);
  }

  return const Icon(Icons.transgender);
}

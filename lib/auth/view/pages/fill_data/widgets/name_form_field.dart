import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/constants/decorations.dart';
import '../../../../../l10n/l10n.dart';
import '../../../../application/fill_data/fill_data_bloc.dart';
import '../../../../domain/value_objects.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({
    super.key,
    this.firstName = true,
  });
  final bool firstName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) =>
          context.read<FillDataBloc>().state.displayName.value.fold(
                (f) => f.maybeMap(
                  empty: (_) => context.l10n.emptyName,
                  exceedingLength: (_) =>
                      context.l10n.exceedingNameLength(DisplayName.maxLength),
                  orElse: () => context.l10n.invalidName,
                ),
                (_) => null,
              ),
      onChanged: (v) =>
          context.read<FillDataBloc>().add(FillDataEvent.nameChanged(name: v)),
      decoration: getInputDecoration(
        hintText: context.l10n.firstName,
        prefixIcon: const Icon(Icons.person),
      ),
      keyboardType: TextInputType.name,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('firstName', firstName));
  }
}

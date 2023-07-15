import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/fill_data/fill_data_bloc.dart';
import '../../../../../core/constants/decorations.dart';
import '../../../../../domain/auth/value_objects.dart';
import '../../../../../l10n/l10n.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({
    Key? key,
    this.firstName = true,
    required this.name,
    required this.showValidatorMessages,
  }) : super(key: key);
  final bool firstName;
  final DisplayName name;
  final bool showValidatorMessages;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) => name.value.fold(
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
        showValidatorMessages: showValidatorMessages,
        hintText: context.l10n.firstName,
        prefixIcon: const Icon(Icons.person),
      ),
      keyboardType: TextInputType.name,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<bool>('firstName', firstName))
      ..add(DiagnosticsProperty<DisplayName>('name', name))
      ..add(
        DiagnosticsProperty<bool>(
          'showValidatorMessages',
          showValidatorMessages,
        ),
      );
  }
}

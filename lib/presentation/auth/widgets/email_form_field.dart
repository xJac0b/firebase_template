import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../constants/decorations.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../l10n/l10n.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
    required this.showValidatorMessages,
    required this.emailAddress,
  }) : super(key: key);
  final bool showValidatorMessages;
  final EmailAddress emailAddress;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      initialValue: emailAddress.value.fold(
        (f) => null,
        (r) => r,
      ),
      decoration: getInputDecoration(
        prefixIcon: const Icon(Icons.email),
        hintText: context.l10n.emailFieldHint,
        showValidatorMessages: showValidatorMessages,
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (_) => emailAddress.value.fold(
        (f) => f.maybeMap(
          invalidEmail: (_) => 'Invalid Email',
          orElse: () => null,
        ),
        (_) => null,
      ),
      onChanged: (value) {
        context
            .read<SignInFormBloc>()
            .add(SignInFormEvent.emailChanged(email: value));
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<bool>(
          'showValidatorMessages', showValidatorMessages,),)
      ..add(DiagnosticsProperty<EmailAddress>('emailAddress', emailAddress));
  }
}

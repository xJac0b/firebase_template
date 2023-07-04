import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../constants/decorations.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../l10n/l10n.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    Key? key,
    this.onPressed,
    required this.password,
    required this.showValidatorMessages,
  }) : super(key: key);
  final Function()? onPressed;
  final Password password;
  final bool showValidatorMessages;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Function()?>.has('onPressed', onPressed))
      ..add(
        DiagnosticsProperty<bool>(
          'showValidatorMessages',
          showValidatorMessages,
        ),
      )
      ..add(DiagnosticsProperty<Password>('password', password));
  }
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: widget.password.value.fold((f) => null, (r) => r),
          decoration: getInputDecoration(
            showValidatorMessages: widget.showValidatorMessages,
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () => setState(() => _obscureText = !_obscureText),
              icon: _obscureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
            hintText: context.l10n.passwordFieldHint,
          ),
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText,
          onChanged: (value) => context.read<SignInFormBloc>().add(
                SignInFormEvent.passwordChanged(password: value.toString()),
              ),
          validator: (_) => widget.password.value.fold(
            (f) => f.maybeMap(
              shortPassword: (_) => 'Short Password',
              weakPassword: (_) =>
                  'Must have 1 uppercase, 1 lowercase, 1 number\nand 1 special character (!@#\$&*~)',
              orElse: () => null,
            ),
            (_) => null,
          ),
        ),
        if (widget.onPressed != null)
          TextButton(
            onPressed: widget.onPressed,
            child: Text(
              context.l10n.forgotPassword,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )
      ],
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchFormButton extends StatelessWidget {
  const SwitchFormButton({
    Key? key,
    required this.buttonText,
    required this.leadingText,
    required this.route,
  }) : super(key: key);
  final String leadingText, buttonText;
  final PageRouteInfo route;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: leadingText,
            style: TextStyle(color: colors.secondary),
          ),
          const WidgetSpan(child: SizedBox(width: 5)),
          TextSpan(
            text: buttonText,
            style: TextStyle(
              color: colors.primary,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.router.push(route);
              },
          )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('buttonText', buttonText))
      ..add(StringProperty('leadingText', leadingText))
      ..add(DiagnosticsProperty<PageRouteInfo>('route', route));
  }
}

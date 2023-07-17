import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/extensions.dart';
import '../../../shared/widgets/default_padding.dart';

class ProfileInfoRow extends StatelessWidget {
  const ProfileInfoRow({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultPadding(
          child: Row(
            children: [
              Icon(icon, size: 24),
              const SizedBox(width: 20),
              Text(
                text,
                style: context.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('text', text))
      ..add(DiagnosticsProperty<IconData>('icon', icon));
  }
}

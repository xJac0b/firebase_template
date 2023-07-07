import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AvatarUpload extends StatelessWidget {
  const AvatarUpload({
    Key? key,
    this.onPressed,
    this.image,
  }) : super(key: key);
  final Function()? onPressed;
  final Image? image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      child: Align(
        child: Stack(
          children: [
            Align(
              child: CircleAvatar(
                radius: 48,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                backgroundImage: image?.image,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: onPressed,
                icon: const Icon(
                  Icons.add_a_photo_rounded,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 200, 200, 200),
                      blurRadius: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Function()?>.has('onPressed', onPressed))
      ..add(DiagnosticsProperty<Image?>('image', image));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/resource_links.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key? key,
    this.onPressed,
    this.url,
  }) : super(key: key);
  final Function()? onPressed;
  final String? url;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      child: CachedNetworkImage(
        imageBuilder: (context, img) => CircleAvatar(
          radius: 58,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          backgroundImage: img,
        ),
        imageUrl: url ?? ResourceLinks.avatarPlaceholderUrl,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Function()?>.has('onPressed', onPressed))
      ..add(StringProperty('url', url));
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/resource_links.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    this.imageUrl,
  });
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      expandedHeight: 200,
      flexibleSpace: ClipPath(
        clipper: BackgroundClipPath(),
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? ResourceLinks.avatarPlaceholderUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('imageUrl', imageUrl));
  }
}

class BackgroundClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final (w, h) = (size.width, size.height);
    final path = Path()
      ..lineTo(0, h)
      ..quadraticBezierTo(w * 0.5, h - 50, w, h)
      ..lineTo(w, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      oldClipper != this;
}

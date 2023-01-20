import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/spacing.dart';

class MediaTileWidget extends StatelessWidget {
  const MediaTileWidget({
    required this.title,
    required this.imageUrl,
    super.key,
  });

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Center(
            child: Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const AppGap.small(),
        Flexible(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}

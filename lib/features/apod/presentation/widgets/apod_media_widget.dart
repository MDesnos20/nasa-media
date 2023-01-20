import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/theme/spacing.dart';
import '../../domain/entities/apod_entity.dart';

class ApodWidget extends StatelessWidget {
  const ApodWidget({
    required this.media,
  });

  final ApodEntity media;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          AppGap.regular(),
          Center(
            child: CachedNetworkImage(
              imageUrl: '${media.url}',
              fit: BoxFit.contain,
            ),
          ),
          AppGap.regular(),
          Text(media.title),
          AppGap.regular(),
          Text(media.date),
        ],
      ),
    );
  }
}

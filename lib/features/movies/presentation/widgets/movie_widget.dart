import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/theme/spacing.dart';
import '../../domain/entities/movie_entity.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({
    required this.movie,
  });

  final MovieEntity movie;

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
              imageUrl: '${GlobalConfiguration().getValue('image_base_url')}${movie.posterPath}',
              fit: BoxFit.contain,
            ),
          ),
          AppGap.regular(),
          Text(context.translate().movieResume(movie.overview)),
          AppGap.regular(),
          Text(context.translate().rating(movie.ratingAverage, movie.ratingCount)),
        ],
      ),
    );
  }
}

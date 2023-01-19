import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import '../../domain/entities/movie_entity.dart';
import 'movie_tile_widget.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({
    required this.movies,
    required this.page,
    required this.onMovieClicked,
    required this.onRefresh,
    super.key,
  });

  final List<MovieEntity> movies;
  final int page;
  final Function(MovieEntity) onMovieClicked;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: onRefresh,
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 6,
                childAspectRatio: 0.75,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return InkWell(
                    onTap: () => onMovieClicked(movies[index]),
                    child: MovieTileWidget(
                      title: movies[index].title,
                      imageUrl: '${GlobalConfiguration().getValue('image_base_url')}${movies[index].posterPath}',
                    ),
                  );
                },
                childCount: movies.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

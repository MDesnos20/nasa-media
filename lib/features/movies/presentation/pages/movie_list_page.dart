import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/route_list.dart';
import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../domain/entities/movie_entity.dart';
import '../blocs/list/movie_list_cubit.dart';
import '../widgets/movie_list_widget.dart';
import 'movie_detail_page.dart';

class MovieListPage extends StatefulWidget {
  MovieListPage({required this.locale, super.key});

  final String locale;

  @override
  State<MovieListPage> createState() => MovieListPageState();
}

class MovieListPageState extends State<MovieListPage> {
  @override
  void initState() {
    super.initState();

    context.read<MovieListCubit>().getMovies(widget.locale);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieListCubit, MovieListState>(
      builder: (context, state) {
        return state.when(
          loading: () => const LoadingWidget(),
          error: () => Center(
            child: Text(context.translate().error),
          ),
          loaded: (movies, page) {
            return MovieListWidget(
              movies: movies,
              page: page,
              onMovieClicked: _onMovieClicked,
              onRefresh: () async {
                context.read<MovieListCubit>().getMovies(context.currentLocale());
              },
            );
          },
        );
      },
    );
  }

  void _onMovieClicked(MovieEntity movie) {
    Navigator.of(context).pushNamed(
      RouteList.movie,
      arguments: MovieDetailPageArgs(
        title: movie.title,
        movieId: movie.id,
        locale: context.currentLocale(),
      ),
    );
  }
}

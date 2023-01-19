import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../../../core/presentation/widgets/top_bar.dart';
import '../blocs/detail/movie_cubit.dart';
import '../widgets/movie_widget.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({
    required this.movieDetailPageArgs,
    super.key,
  });

  final MovieDetailPageArgs movieDetailPageArgs;

  @override
  State<MovieDetailPage> createState() => MovieDetailPageState();
}

class MovieDetailPageState extends State<MovieDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<MovieCubit>().getMovie(widget.movieDetailPageArgs.movieId, widget.movieDetailPageArgs.locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: Text(widget.movieDetailPageArgs.title),
      ),
      body: BlocBuilder<MovieCubit, MovieState>(
        builder: (context, state) {
          return state.when(
            loading: () => const LoadingWidget(),
            error: () => Center(
              child: Text(context.translate().error),
            ),
            loaded: (movie) => MovieWidget(movie: movie),
          );
        },
      ),
    );
  }
}

class MovieDetailPageArgs {
  const MovieDetailPageArgs({
    required this.title,
    required this.movieId,
    required this.locale,
  });

  final int movieId;
  final String title;
  final String locale;
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../blocs/detail/movie_cubit.dart';

const keyMovieTitle = 'movieTitle';
const keyMovieDescription = 'movieDescription';

class MoviePage extends StatefulWidget {
  const MoviePage({
    required this.title,
    required this.movieId,
    super.key,
  });

  final String title;
  final int movieId;

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  @override
  void initState() {
    super.initState();

    context.read<MovieCubit>().getMovie(widget.movieId, AppLocalizations.of(context).localeName);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieCubit, MovieState>(
      builder: (context, state) {
        return state.when(
          loading: () => const LoadingWidget(),
          error: () => Center(
            child: Text(context.translate().error),
          ),
          loaded: (movie) => const LoadingWidget(),
        );
      },
    );
  }
}

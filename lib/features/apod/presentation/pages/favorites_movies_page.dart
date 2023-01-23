import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../blocs/detail/apod_cubit.dart';

const keyMovieTitle = 'movieTitle';
const keyMovieDescription = 'movieDescription';

class ApodPage extends StatefulWidget {
  const ApodPage({
    required this.title,
    required this.movieId,
    super.key,
  });

  final String title;
  final int movieId;

  @override
  State<ApodPage> createState() => _ApodPageState();
}

class _ApodPageState extends State<ApodPage> {
  @override
  void initState() {
    super.initState();

    context.read<ApodCubit>().getApod(15);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApodCubit, ApodState>(
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

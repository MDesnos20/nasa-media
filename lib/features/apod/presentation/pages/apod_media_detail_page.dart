import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_widget.dart';
import '../../../../core/presentation/widgets/top_bar.dart';
import '../blocs/detail/apod_cubit.dart';
import '../widgets/apod_media_widget.dart';

class ApodMediaDetailPage extends StatefulWidget {
  const ApodMediaDetailPage({
    required this.apodDetailPageArgs,
    super.key,
  });

  final ApodDetailPageArgs apodDetailPageArgs;

  @override
  State<ApodMediaDetailPage> createState() => ApodMediaDetailPageState();
}

class ApodMediaDetailPageState extends State<ApodMediaDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<ApodCubit>().getApod(15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: Text(widget.apodDetailPageArgs.title),
      ),
      body: BlocBuilder<ApodCubit, ApodState>(
        builder: (context, state) {
          return state.when(
            loading: () => const LoadingWidget(),
            error: () => Center(
              child: Text(context.translate().error),
            ),
            loaded: (apod) => ApodWidget(media: apod[1],),
          );
        },
      ),
    );
  }
}

class ApodDetailPageArgs {
  const ApodDetailPageArgs({
    required this.title,
    required this.movieId,
    required this.locale,
  });

  final int movieId;
  final String title;
  final String locale;
}

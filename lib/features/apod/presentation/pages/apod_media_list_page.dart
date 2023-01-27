import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/route_list.dart';
import '../../../../core/extension/context.dart';
import '../../../../core/presentation/widgets/loading_grid_widget.dart';
import '../../domain/entities/apod_entity.dart';
import '../blocs/list/apod_list_cubit.dart';
import '../widgets/apod_media_list_widget.dart';
import 'apod_media_detail_page.dart';

class ApodMediaListPage extends StatefulWidget {
  ApodMediaListPage({super.key});

  @override
  State<ApodMediaListPage> createState() => ApodMediaListPageState();
}

class ApodMediaListPageState extends State<ApodMediaListPage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
    context.read<ApodListCubit>().getApodMedia(true);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApodListCubit, ApodListState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return Center(child: LoadingGridWidget());
          },
          error: () => Center(
            child: Text(context.translate().error),
          ),
          loaded: (apodMediaList) {
            context.read<ApodListCubit>().isFetching = false;
            return ApodMediaListWidget(
              isLoading: context.read<ApodListCubit>().isFetching,
              controller: _controller,
              onScroll: _onScroll,
              apodMediaList: apodMediaList,
              onMediaClicked: _onMovieClicked,
              onRefresh: () async {
                context.read<ApodListCubit>().getApodMedia(false);
              },
            );
          },
        );
      },
    );
  }

  void _onScroll() {
    if (_controller.offset == _controller.position.maxScrollExtent &&
        !context.read<ApodListCubit>().isFetching) {
      context.read<ApodListCubit>().getApodMedia(false);
    }
  }

  void _onMovieClicked(ApodEntity movie) {
    Navigator.of(context).pushNamed(
      RouteList.about,
      arguments: ApodDetailPageArgs(
        title: movie.title,
        movieId: 1,
        locale: context.currentLocale(),
      ),
    );
  }
}

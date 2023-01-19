import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_movies_by_page_usecase.dart';

part 'movie_list_cubit.freezed.dart';
part 'movie_list_state.dart';

class MovieListCubit extends Cubit<MovieListState> {
  MovieListCubit({required this.moviesByPage}) : super(MovieListState.loading());

  final GetMoviesByPageUseCase moviesByPage;

  int _currentPage = 1;

  Future<void> getMovies(String locale) async {
    emit(MovieListState.loading());
    final result = await moviesByPage(GetMoviesByPageUseCaseParams(page: _currentPage, locale: locale));

    result.when(
      success: (pageOfMovies) {
        emit(MovieListState.loaded(movies: pageOfMovies.results, page: _currentPage));
      },
      failure: (failure) {
        emit(MovieListState.error());
      },
    );
  }
}

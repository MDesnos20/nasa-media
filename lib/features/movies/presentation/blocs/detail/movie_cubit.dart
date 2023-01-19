import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../../domain/usecases/get_movie_by_id_usecase.dart';

part 'movie_cubit.freezed.dart';
part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit({required this.movieByIdUseCase}) : super(MovieState.loading());

  final GetMovieByIdUseCase movieByIdUseCase;

  Future<void> getMovie(int id, String locale) async {
    emit(MovieState.loading());
    final result = await movieByIdUseCase(GetMovieByIdUseCaseParams(id: id, locale: locale));

    result.when(
      success: (movie) {
        emit(MovieState.loaded(movie: movie));
      },
      failure: (failure) {
        emit(MovieState.error());
      },
    );
  }
}

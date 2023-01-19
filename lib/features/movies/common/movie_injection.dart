part of '../../../di/injection_container.dart';

void _featureMovie() {
  hive.registerAdapter(MovieModelAdapter());

  sl
    // DataSources
    ..injectDataSource<MovieRemoteDataSource>(() => MovieRemoteDataSourceImpl(dio: dio))

    // Repositories
    ..injectRepository<MoviesRepository>(
      () => MoviesRepositoryImpl(
        remoteDataSource: sl(),
        networkInfo: sl(),
      ),
    )

    // UseCases
    ..injectUseCase(() => GetMovieByIdUseCase(sl()))
    ..injectUseCase(() => GetMoviesByPageUseCase(sl()))

    // Blocs
    ..injectBloc(() => MovieCubit(movieByIdUseCase: sl()))
    ..injectBloc(() => MovieListCubit(moviesByPage: sl()));

  // Interfaces
}

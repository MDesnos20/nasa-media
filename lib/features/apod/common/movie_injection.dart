part of '../../../di/injection_container.dart';

void _featureMovie() {
  hive.registerAdapter(ApodModelAdapter());

  sl
    // DataSources
    ..injectDataSource<ApodRemoteDataSource>(() => ApodRemoteDataSourceImpl(dio: dio))

    // Repositories
    ..injectRepository<ApodRepository>(
      () => ApodRepositoryImpl(
        remoteDataSource: sl(),
        networkInfo: sl(),
      ),
    )

    // UseCases
    ..injectUseCase(() => GetApodMediaUseCase(sl()))

    // Blocs
    ..injectBloc(() => ApodCubit(apodMediaUseCase: sl(), ))
    ..injectBloc(() => ApodListCubit(apodMedia: sl(), ));

  // Interfaces
}

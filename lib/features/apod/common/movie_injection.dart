part of '../../../di/injection_container.dart';

void _featureMovie() {
  hive.registerAdapter(ApodModelAdapter());

  sl
    // DataSources
    ..injectDataSource<ApodRemoteDataSource>(() => ApodRemoteDataSourceImpl(dio: dio))
    ..injectDataSource<DownloadTaskDataSource>(DownloadTaskDataSourceImpl.new)

//DownloadTaskDataSource
    // Repositories
    ..injectRepository<ApodRepository>(
      () => ApodRepositoryImpl(
        remoteDataSource: sl(),
        networkInfo: sl(),
      ),
    )

    ..injectRepository<DownloadMediaRepository>(
      () => DownloadMediaRepositoryImpl(
        localDataSource: sl(),
      ),
    )

    // UseCases
    ..injectUseCase(() => GetApodMediaUseCase(sl()))
    ..injectUseCase(() => InitDownloaderUseCase(sl()))
    ..injectUseCase(() => GetDownloadReadyUseCase(sl()))
    ..injectUseCase(() => DisposeDownloadUseCase(sl()))
    ..injectUseCase(() => GetReceiverPortUseCase(sl()))
    ..injectUseCase(() => GetLocalPathUseCase(sl()))

    // Blocs
    ..injectBloc(() => ApodListCubit(apodMedia: sl(), ))
    ..injectBloc(() => DownloadCubit(
      initDownloaderUseCase: sl(),
      getDownloadReadyUseCase: sl(),
      disposeDownloadUseCase: sl(),
      getReceiverPortUseCase: sl(),
      getLocalPathUseCase: sl(),
    ),);

  // Interfaces
}

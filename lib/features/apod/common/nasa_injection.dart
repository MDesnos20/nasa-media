part of '../../../di/injection_container.dart';

void _featureNasa() {
  hive.registerAdapter(ApodModelAdapter());

  sl
    // DataSources
    ..injectDataSource<ApodRemoteDataSource>(() => ApodRemoteDataSourceImpl(dio: dio))
    ..injectDataSource<DownloadTaskDataSource>(DownloadTaskDataSourceImpl.new)
    ..injectDataSource<GoogleMapDatasSource>(() => GoogleMapDatasSourceImpl())

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

    ..injectRepository<GoogleMapRepository>(
      () => GoogleMapRepositoryImpl(
        googleMapDataSource: sl(),
        geolocInfo: sl(),
      ),
    )

    // UseCases
    ..injectUseCase(() => GetApodMediaUseCase(sl()))
    ..injectUseCase(() => InitDownloaderUseCase(sl()))
    ..injectUseCase(() => DisposeDownloadUseCase(sl()))
    ..injectUseCase(() => GetReceiverPortUseCase(sl()))
    ..injectUseCase(() => GetLocalPathUseCase(sl()))
    ..injectUseCase(() => RequestDownloadUseCase(sl()))
    ..injectUseCase(() => OpenDownloadedFileUseCase(sl()))
    ..injectUseCase(() => GetCameraPositionUseCase(sl()))
    ..injectUseCase(() => GetLocalisationUseCase(sl()))
    ..injectUseCase(() => GetCurrentPositionUseCase(sl()))

    // Blocs
    ..injectBloc(() => GoogleMapCubit(
      getCameraPositionUseCase: sl(),
      getLocalisationUseCase: sl(), 
      getCurrentPositionUseCase: sl(),
    ),)
    ..injectBloc(() => ApodListCubit(apodMedia: sl(), ))
    ..injectBloc(() => DownloadCubit(
      initDownloaderUseCase: sl(),
      disposeDownloadUseCase: sl(),
      getReceiverPortUseCase: sl(),
      getLocalPathUseCase: sl(),

    ),);

  // Interfaces
}

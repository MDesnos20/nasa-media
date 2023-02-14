import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../core/geoloc/geoloc.dart';
import '../core/network/network_info.dart';
import '../core/presentation/blocs/navigation/navigation_cubit.dart';
import '../features/apod/data/datasources/apod_remote_data_source.dart';
import '../features/apod/data/datasources/download_task_data_source.dart';
import '../features/apod/data/models/apod_model.dart';
import '../features/apod/data/repositories/apod_repository_impl.dart';
import '../features/apod/data/repositories/download_media_repository_impl.dart';
import '../features/apod/domain/repositories/apod_repository.dart';
import '../features/apod/domain/repositories/download_media_repository.dart';
import '../features/apod/domain/usecases/download_file/dispose_download_usecase.dart';
import '../features/apod/domain/usecases/download_file/get_local_path_usecase.dart';
import '../features/apod/domain/usecases/download_file/get_receive_port_usecase.dart';
import '../features/apod/domain/usecases/download_file/init_download_usecase.dart';
import '../features/apod/domain/usecases/download_file/open_downloaded_file_usecase.dart';
import '../features/apod/domain/usecases/download_file/request_download_usecase.dart';
import '../features/apod/domain/usecases/get_apod_media_usecase.dart';
import '../features/apod/presentation/blocs/download/download_cubit.dart';
import '../features/apod/presentation/blocs/list/apod_list_cubit.dart';
import '../features/home/data/datasources/google_map_data_source.dart';
import '../features/home/data/repositories/google_map_repository_impl.dart';
import '../features/home/domain/repositories/google_map_repository.dart';
import '../features/home/domain/usecases/get_camera_position.dart';
import '../features/home/domain/usecases/get_localisation_usecase.dart';
import '../features/home/presentation/blocs/google_map_cubit.dart';
import 'di_ext.dart';

part '../features/apod/common/nasa_injection.dart';

final GetIt sl = GetIt.instance;
final Dio dio = Dio();
final hive = Hive;

Future<void> init() async {
  final docDir = await getApplicationDocumentsDirectory();
  hive.init(docDir.path);

  _core();
  _featureNasa();
}

void _core() {
  sl
    // DataSources

    // Repositories

    // UseCases

    // Blocs
    ..injectBloc(NavigationCubit.new)

    // Interfaces
    ..injectInterface(GlobalConfiguration.new)
    ..injectInterface<NetworkInfo>(NetworkInfoImpl())
    ..injectInterface<GeolocInfo>(GeolocInfoImpl());
}

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../core/network/network_info.dart';
import '../core/presentation/blocs/navigation/navigation_cubit.dart';
import '../features/movies/data/datasources/movie_remote_data_source.dart';
import '../features/movies/data/models/movie_model.dart';
import '../features/movies/data/repositories/movies_repository_impl.dart';
import '../features/movies/domain/repositories/movies_repository.dart';
import '../features/movies/domain/usecases/get_movie_by_id_usecase.dart';
import '../features/movies/domain/usecases/get_movies_by_page_usecase.dart';
import '../features/movies/presentation/blocs/detail/movie_cubit.dart';
import '../features/movies/presentation/blocs/list/movie_list_cubit.dart';
import 'di_ext.dart';

part '../features/movies/common/movie_injection.dart';

final GetIt sl = GetIt.instance;
final Dio dio = Dio();
final hive = Hive;

Future<void> init() async {
  final docDir = await getApplicationDocumentsDirectory();
  hive.init(docDir.path);

  _core();
  _featureMovie();
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
    ..injectInterface<NetworkInfo>(NetworkInfoImpl());
}

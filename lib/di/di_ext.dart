import 'package:get_it/get_it.dart';

extension Injections on GetIt {
  void injectInterface<T extends Object>(T instanceToInject, {String? instanceName}) {
    registerSingleton(instanceToInject, instanceName: instanceName);
  }

  void injectRepository<T extends Object>(FactoryFunc<T> func) {
    registerLazySingleton(func);
  }

  void injectDataSource<T extends Object>(FactoryFunc<T> func) {
    registerLazySingleton(func);
  }

  void injectUseCase<T extends Object>(FactoryFunc<T> func) {
    registerLazySingleton(func);
  }

  void injectBloc<T extends Object>(FactoryFunc<T> func) {
    registerFactory(func);
  }
}

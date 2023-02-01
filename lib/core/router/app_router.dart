import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection_container.dart';
import '../../features/about/presentation/pages/about_page.dart';
import '../../features/apod/domain/entities/apod_entity.dart';
import '../../features/apod/presentation/blocs/detail/apod_cubit.dart';
import '../../features/apod/presentation/pages/apod_media_detail_page.dart';
import '../../features/splash/presentation/pages/splashscreen_page.dart';
import '../constants/route_list.dart';
import '../presentation/pages/main_page.dart';

class AppRouter {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  String get initialRoute => RouteList.splash;

  List<Route> onGenerateInitialRoutes(String initialRoute) {
    return [getPageRoute(initialRoute, null)];
  }

  Route onGenerateRoute(RouteSettings routeSettings) {
    final String routeName = routeSettings.name ?? '';
    return getPageRoute(routeName, routeSettings.arguments);
  }

  Route getPageRoute(String routeName, Object? args) {
    switch (routeName) {
      case RouteList.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreenPage());
      case RouteList.home:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case RouteList.apod:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => sl<ApodCubit>()),
            ],
            child: ApodMediaDetailPage(apodDetailPageArgs: args as ApodDetailPageArgs),
          ),
        );
      case RouteList.apodDetail:
        return MaterialPageRoute(builder: (_) => ApodMediaDetailPage(apodDetailPageArgs: args as ApodDetailPageArgs));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for $routeName'),
            ),
          ),
        );
    }
  }
}

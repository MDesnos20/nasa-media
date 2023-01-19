import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection_container.dart';
import '../../features/about/presentation/pages/about_page.dart';
import '../../features/movies/presentation/blocs/detail/movie_cubit.dart';
import '../../features/movies/presentation/pages/movie_detail_page.dart';
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
      case RouteList.movie:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => sl<MovieCubit>()),
            ],
            child: MovieDetailPage(movieDetailPageArgs: args as MovieDetailPageArgs),
          ),
        );
      case RouteList.about:
        return MaterialPageRoute(builder: (_) => const AboutPage());
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

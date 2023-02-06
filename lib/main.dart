import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:global_configuration/global_configuration.dart';

import 'core/presentation/blocs/navigation/navigation_cubit.dart';
import 'core/presentation/widgets/banner_wrapper.dart';
import 'core/router/app_router.dart';
import 'core/theme/theme.dart';
import 'di/injection_container.dart' as di;
import 'package:flutter_downloader/flutter_downloader.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Dependency Injection
  await di.init();

  await GlobalConfiguration().loadFromAsset('app_settings');

  await FlutterDownloader.initialize(
    debug: true, // optional: set to false to disable printing logs to console (default: true)
    ignoreSsl: true // option: set to false to disable working with http links (default: false)
  );

  runApp(const SocleApp());
}

class SocleApp extends StatefulWidget {
  const SocleApp({super.key});

  @override
  State<SocleApp> createState() => _SocleAppState();
}

class _SocleAppState extends State<SocleApp> {
  final _appRouter = AppRouter();
  late NavigationCubit _navigationCubit;

  @override
  void initState() {
    super.initState();
    _navigationCubit = di.sl<NavigationCubit>();
  }

  @override
  void dispose() {
    _navigationCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalConfiguration cfg = GlobalConfiguration();
    return BannerWrapper(
      env: cfg.getValue('env'),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<NavigationCubit>.value(value: _navigationCubit),
        ],
        child: MaterialApp(
          title: 'Socle Niji',
          theme: socleTheme(),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          initialRoute: _appRouter.initialRoute,
          onGenerateInitialRoutes: _appRouter.onGenerateInitialRoutes,
          onGenerateRoute: _appRouter.onGenerateRoute,
          navigatorKey: _appRouter.navigatorKey,
        ),
      ),
    );
  }
}

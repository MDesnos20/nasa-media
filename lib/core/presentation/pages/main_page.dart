import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../di/injection_container.dart';
import '../../../features/apod/presentation/blocs/download/download_cubit.dart';
import '../../../features/apod/presentation/blocs/list/apod_list_cubit.dart';
import '../../../features/apod/presentation/pages/apod_media_list_page.dart';
import '../../../features/home/presentation/pages/home_page.dart';
import '../blocs/navigation/navigation_cubit.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/top_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: GestureDetector(
          onTap: () async {
            await launchUrl(Uri(scheme: 'https', host: 'api.nasa.gov'), mode: LaunchMode.externalApplication);
          },
          child: Image.asset('assets/images/nasa-logo.png', fit: BoxFit.fitHeight, height: 60
        ,),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => sl<ApodListCubit>()),
          BlocProvider(create: (_) => sl<DownloadCubit>()),
        ],
        child: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            switch (state.navbarItem) {
              case NavbarItem.home:
                return const HomePage();
              case NavbarItem.apod:
                return const ApodMediaListPage();
              case NavbarItem.favorites:
                return const HomePage();
              default:
                // Should never be reached
                return const SizedBox.shrink();
            }
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

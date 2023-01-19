import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../di/injection_container.dart';
import '../../../features/home/presentation/pages/home_page.dart';
import '../../../features/movies/presentation/blocs/list/movie_list_cubit.dart';
import '../../../features/movies/presentation/pages/movie_list_page.dart';
import '../../extension/context.dart';
import '../../resources/vectors.dart';
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
            await launchUrl(Uri(scheme: 'https', host: 'www.niji.fr'), mode: LaunchMode.externalApplication);
          },
          child: SvgPicture.asset(Vectors.niji, height: 30),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => sl<MovieListCubit>()),
        ],
        child: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            switch (state.navbarItem) {
              case NavbarItem.home:
                return const HomePage();
              case NavbarItem.movies:
                return MovieListPage(locale: context.currentLocale());
              case NavbarItem.favorites:
                return const HomePage();
              default:
                // Should never be reached
                return SizedBox.shrink();
            }
          },
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}

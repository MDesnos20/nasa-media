import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../extension/context.dart';
import '../../theme/app_colors.dart';
import '../blocs/navigation/navigation_cubit.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  BottomNavigationBarWidgetState createState() => BottomNavigationBarWidgetState();
}

class BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.index,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          selectedItemColor: AppColors.cararra,
          items: [
            BottomNavigationBarItem(
              activeIcon: _icon(Icons.home, AppColors.cararra),
              icon: _icon(Icons.home, AppColors.edward),
              label: context.translate().bottomNavBarHome,
            ),
            BottomNavigationBarItem(
              activeIcon: _icon(Icons.grid_view, AppColors.cararra),
              icon: _icon(Icons.grid_view, const Color.fromARGB(255, 202, 204, 204)),
              label: context.translate().bottomNavBarMedia,
            ),
            BottomNavigationBarItem(
              activeIcon: _icon(Icons.favorite, AppColors.cararra),
              icon: _icon(Icons.favorite, AppColors.edward),
              label: context.translate().bottomNavBarFavorites,
            ),
          ],
          onTap: context.read<NavigationCubit>().getNavBarItemFromIndex,
        );
      },
    );
  }

  Widget _icon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}

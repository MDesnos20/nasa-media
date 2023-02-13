import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_cubit.freezed.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState(NavbarItem.home));

  void getNavBarItem(NavbarItem navbarItem) => emit(NavigationState(navbarItem));

  void getNavBarItemFromIndex(int index) {
    switch (index) {
      case 0:
        return getNavBarItem(NavbarItem.home);
      case 1:
        return getNavBarItem(NavbarItem.apod);
      default:
        return;
    }
  }
}

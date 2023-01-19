part of 'navigation_cubit.dart';

enum NavbarItem {
  home,
  movies,
  favorites,
}

extension NavbarItemX on NavbarItem {
  int get itemIndex {
    switch (this) {
      case NavbarItem.home:
        return 0;
      case NavbarItem.movies:
        return 1;
      case NavbarItem.favorites:
        return 2;
    }
  }
}

@freezed
class NavigationState with _$NavigationState {
  const NavigationState._();

  const factory NavigationState(NavbarItem navbarItem) = _NavigationState;

  int get index => navbarItem.itemIndex;
}

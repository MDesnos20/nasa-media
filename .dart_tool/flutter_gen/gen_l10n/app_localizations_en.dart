import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Socle Niji 2022';

  @override
  String get bottomNavBarHome => 'Home';

  @override
  String get bottomNavBarMovies => 'Movies';

  @override
  String get bottomNavBarFavorites => 'Favorites';

  @override
  String get moviesTitle => 'Movies';

  @override
  String get error => 'An error occurred';

  @override
  String rating(double rating, num count) {
    final intl.NumberFormat ratingNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String ratingString = ratingNumberFormat.format(rating);

    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'No vote for this movie',
      one: 'Rating: $ratingString for one vote',
      other: 'Rating: $ratingString for $count votes',
    );
  }

  @override
  String movieResume(String overview) {
    return 'Overview : $overview';
  }
}

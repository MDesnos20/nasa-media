import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get title => 'Socle Niji 2022';

  @override
  String get bottomNavBarHome => 'Accueil';

  @override
  String get bottomNavBarMovies => 'Films';

  @override
  String get bottomNavBarFavorites => 'Favoris';

  @override
  String get moviesTitle => 'Films';

  @override
  String get error => 'Une erreur est survenue';

  @override
  String rating(double rating, num count) {
    final intl.NumberFormat ratingNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
      
    );
    final String ratingString = ratingNumberFormat.format(rating);

    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      zero: 'Aucune note pour ce film',
      one: 'Notation : $ratingString pour une note',
      other: 'Notation : $ratingString pour $count notes',
    );
  }

  @override
  String movieResume(String overview) {
    return 'Résumé : $overview';
  }
}

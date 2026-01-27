// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Culinary World';

  @override
  String get welcome => 'Welcome';

  @override
  String get searchHint => 'Search dishes, countries...';

  @override
  String get ingredients => 'Ingredients';

  @override
  String get instructions => 'How to cook';

  @override
  String get close => 'Close';

  @override
  String get settings => 'Settings';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get language => 'Language';

  @override
  String get favorites => 'Favorites';

  @override
  String get noFavorites => 'No favorites yet';

  @override
  String get famousFor => 'Famous for';
}

// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Monde Culinaire';

  @override
  String get welcome => 'Bienvenue';

  @override
  String get searchHint => 'Rechercher plats, pays...';

  @override
  String get ingredients => 'Ingrédients';

  @override
  String get instructions => 'Préparation';

  @override
  String get close => 'Fermer';

  @override
  String get settings => 'Paramètres';

  @override
  String get darkMode => 'Mode Sombre';

  @override
  String get language => 'Langue';

  @override
  String get favorites => 'Favoris';

  @override
  String get noFavorites => 'Aucun favori pour le moment';

  @override
  String get famousFor => 'Célèbre pour';
}

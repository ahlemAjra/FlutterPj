import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'providers/theme_provider.dart';
import 'providers/language_provider.dart';
import 'providers/auth_provider.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/country_details_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/favorites_screen.dart';
import 'models/country_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<String>('favorites');
  await Hive.openBox('settings'); // Box for simple settings
  await Hive.openBox('users'); // For user database
  await Hive.openBox('session'); // For persistent login

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(languageProvider);
    final authState = ref.watch(authProvider);

    return MaterialApp(
      title: 'Culinary World',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('fr')],
      // If authenticated, go straight to Home. Otherwise Login.
      home: authState.isAuthenticated
          ? HomePage(username: authState.username ?? 'User')
          : const LoginPage(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/home': (context) {
          final username =
              ModalRoute.of(context)?.settings.arguments as String?;
          return HomePage(username: username ?? 'User');
        },
        '/country-details': (context) {
          final country =
              ModalRoute.of(context)?.settings.arguments as Country?;
          return CountryDetailsPage(country: country ?? countries[0]);
        },
        '/settings': (context) {
          final username =
              ModalRoute.of(context)?.settings.arguments as String?;
          return SettingsPage(username: username ?? 'User');
        },
        '/favorites': (context) => const FavoritesScreen(),
      },
    );
  }
}

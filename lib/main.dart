import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/country_details_screen.dart';
import 'screens/settings_screen.dart';
import 'models/country_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Culinary World',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
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
      },
    );
  }
}

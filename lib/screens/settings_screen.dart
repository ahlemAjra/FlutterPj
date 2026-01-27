import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';
import '../providers/theme_provider.dart';
import '../providers/language_provider.dart';
import '../providers/auth_provider.dart';
import '../utils/constants.dart';

class SettingsPage extends ConsumerWidget {
  final String username;

  const SettingsPage({super.key, required this.username});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final locale = ref.watch(languageProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings, style: const TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              username,
              style: AppTextStyles.headingMedium.copyWith(color: Colors.white),
            ),
            accountEmail: const Text(
              "user@example.com",
              style: TextStyle(color: Colors.white70),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                username.isNotEmpty ? username[0].toUpperCase() : "U",
                style: const TextStyle(
                  fontSize: 40.0,
                  color: AppColors.primary,
                ),
              ),
            ),
            decoration: const BoxDecoration(color: AppColors.primary),
          ),
          SwitchListTile(
            title: Text(l10n.darkMode, style: AppTextStyles.bodyMedium),
            value: themeMode == ThemeMode.dark,
            secondary: Icon(
              themeMode == ThemeMode.dark ? Icons.dark_mode : Icons.light_mode,
              color: AppColors.primary,
            ),
            activeThumbColor:
                AppColors.primary, // Replaced activeColor with activeThumbColor
            onChanged: (value) {
              ref.read(themeProvider.notifier).toggleTheme();
            },
          ),
          ListTile(
            title: Text(l10n.language, style: AppTextStyles.bodyMedium),
            subtitle: Text(
              locale.languageCode == 'en' ? 'English' : 'Français',
            ),
            leading: const Icon(Icons.language, color: AppColors.primary),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ref.read(languageProvider.notifier).toggleLanguage();
            },
          ),
          ListTile(
            title: Text(
              'Logout',
              style: AppTextStyles.bodyMedium.copyWith(color: AppColors.accent),
            ),
            leading: const Icon(Icons.logout, color: AppColors.accent),
            onTap: () async {
              await ref.read(authProvider.notifier).logout();
              if (context.mounted) {
                Navigator.of(
                  context,
                ).pushNamedAndRemoveUntil('/login', (route) => false);
              }
            },
          ),
        ],
      ),
    );
  }
}

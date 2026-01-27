import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LanguageNotifier extends StateNotifier<Locale> {
  LanguageNotifier() : super(const Locale('en')) {
    _loadLanguage();
  }

  void _loadLanguage() {
    final box = Hive.box('settings');
    final languageCode = box.get('languageCode', defaultValue: 'en');
    state = Locale(languageCode);
  }

  void toggleLanguage() {
    final box = Hive.box('settings');
    if (state.languageCode == 'en') {
      state = const Locale('fr');
      box.put('languageCode', 'fr');
    } else {
      state = const Locale('en');
      box.put('languageCode', 'en');
    }
  }
}

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier();
});

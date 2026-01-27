import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.system) {
    _loadTheme();
  }

  void _loadTheme() {
    final box = Hive.box('settings');
    final isDark = box.get('isDark', defaultValue: false);
    state = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme() {
    final box = Hive.box('settings');
    if (state == ThemeMode.light) {
      state = ThemeMode.dark;
      box.put('isDark', true);
    } else {
      state = ThemeMode.light;
      box.put('isDark', false);
    }
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});

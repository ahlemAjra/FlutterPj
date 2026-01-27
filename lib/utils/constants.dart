import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // Primary Palette
  static const Color primary = Color(0xFF6C63FF); // Modern Violet
  static const Color secondary = Color(0xFF00BFA6); // Teal accent
  static const Color accent = Color(0xFFFF6584); // Soft Red for favorites

  // Backgrounds
  static const Color backgroundLight = Color(0xFFF8F9FA); // Off-white
  static const Color backgroundDark = Color(0xFF1A1A2E); // Deep Navy

  // Cards
  static const Color cardLight = Colors.white;
  static const Color cardDark = Color(0xFF16213E);

  // Text
  static const Color textDark = Color(0xFF2D3436);
  static const Color textLight = Color(0xFFDFE6E9);
}

class AppTextStyles {
  static TextStyle get headingLarge =>
      GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold);

  static TextStyle get headingMedium =>
      GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600);

  static TextStyle get bodyMedium =>
      GoogleFonts.inter(fontSize: 16, height: 1.5);

  static TextStyle get bodySmall =>
      GoogleFonts.inter(fontSize: 14, color: Colors.grey[600]);
}

class AppDecorations {
  static BoxDecoration cardDecoration(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return BoxDecoration(
      color: isDark ? AppColors.cardDark : AppColors.cardLight,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: isDark ? Colors.black26 : Colors.grey.withValues(alpha: 0.1),
          blurRadius: 10,
          offset: const Offset(0, 4),
        ),
      ],
      border: Border.all(
        color: isDark ? Colors.white10 : Colors.grey.withValues(alpha: 0.2),
      ),
    );
  }
}

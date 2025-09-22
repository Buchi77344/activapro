import 'package:flutter/material.dart';

class AppColors {
  // Core dark theme
  static const Color background = Color(0xFF121212); // Deep dark background
  static const Color surface = Color(0xFF1E1E1E);    // Slightly lighter for cards/containers
  static const Color primaryText = Color(0xFFE0E0E0); // Light gray text
  static const Color secondaryText = Color(0xFF9E9E9E); // Medium gray text
  static const Color disabledText = Color(0xFF616161);  // Darker gray text

  // Borders & dividers
  static const Color border = Color(0xFF2C2C2C);
  static const Color divider = Color(0xFF3A3A3A);

  // Accent highlights
  static const Color accentBlue = Color(0xFF2979FF);
  static const Color accentGreen = Color(0xFF00C853);
  static const Color accentRed = Color(0xFFD50000);
  static const Color accentOrange = Color(0xFFFF6D00);
  static const Color accentPurple = Color(0xFFAA00FF);

  // Status colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFA000);
  static const Color error = Color(0xFFD32F2F);
  static const Color info = Color(0xFF0288D1);

  // Optional gradient
  static const LinearGradient darkGradient = LinearGradient(
    colors: [Color(0xFF1E1E1E), Color(0xFF121212)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

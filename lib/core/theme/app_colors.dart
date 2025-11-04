import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFFF5C85C);
  static const Color primaryGradientEnd = Color(0xFFFFEF01);
  static const Color primaryLight = Color(0xFFE8C15E);
  static const Color secondary = Color(0xFF878787);
  static const Color secondaryLight = Color(0xFFACDA3B);
  static const Color background = Color.fromARGB(245, 255, 255, 255);
  static const Color cardBackground = Colors.white;
  static const Color lightGray = Color(0xFFF8F8F8);
  static const Color massageBackground = Color(0xFFFCEFD0);
  static const Color spaBackground = Color(0xFFEAF4D0);
  static const Color border = Color(0xFFE0E0E0);
  static const Color success = Color(0xFFACDA3B);
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Color(0xFF878787);
  static const Color textOnPrimary = Colors.white;

  static const LinearGradient subscriptionGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primary, primaryGradientEnd],
  );

  static Color whiteWithOpacity(double opacity) =>
      Colors.white.withValues(alpha: opacity);
}

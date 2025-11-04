import 'package:flutter/material.dart';

class AppDimensions {
  AppDimensions._();

  static const double radiusSmall = 12.0;
  static const double radiusMedium = 16.0;
  static const double radiusLarge = 24.0;
  static const double radiusCircle = 100.0;

  static BorderRadius get borderRadiusSmall =>
      BorderRadius.circular(radiusSmall);
  static BorderRadius get borderRadiusMedium =>
      BorderRadius.circular(radiusMedium);
  static BorderRadius get borderRadiusLarge =>
      BorderRadius.circular(radiusLarge);
  static BorderRadius get borderRadiusCircle =>
      BorderRadius.circular(radiusCircle);

  static const double iconSmall = 12.0;
  static const double iconMedium = 20.0;
  static const double iconLarge = 24.0;
  static const double iconXLarge = 32.0;

  // Button heights
  static const double buttonHeightSmall = 36.0;
  static const double buttonHeightMedium = 48.0;
  static const double buttonHeightLarge = 56.0;

  // Card heights
  static const double subscriptionCardHeight = 203.0;
  static const double serviceCardHeight = 180.0;

  // Bottom navigation bar
  static const double bottomNavBarHeight = 92.0;

  // Progress indicator
  static const double progressIndicatorHeight = 8.0;
  static const double progressIndicatorHeightMedium = 12.0;

  // Border width
  static const double borderWidthThin = 1.0;
  static const double borderWidthMedium = 2.0;

  // Image/Avatar sizes
  static const double avatarSmall = 16.0;
  static const double avatarMedium = 24.0;
  static const double avatarLarge = 32.0;

  // Container padding для иконок
  static const double iconContainerPadding = 12.0;
  static const double iconContainerPaddingSmall = 10.0;

  // Специфичные размеры для карточек сервисов
  static const double serviceIconSize = iconLarge;
  static const double serviceIconPadding = iconContainerPadding;
}

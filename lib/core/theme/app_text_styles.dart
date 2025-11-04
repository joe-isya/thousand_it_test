import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';

/// Централизованное хранилище всех текстовых стилей приложения
/// Использует принцип Single Responsibility из SOLID
class AppTextStyles {
  // Приватный конструктор для предотвращения создания экземпляров
  AppTextStyles._();

  // Headings
  static const TextStyle h1 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Body text
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodySmallRegular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  // Caption / Secondary text
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle captionMedium = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  // On Primary (белый текст на цветном фоне)
  static const TextStyle bodySmallOnPrimary = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textOnPrimary,
  );

  static const TextStyle bodyMediumOnPrimary = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textOnPrimary,
  );

  static const TextStyle h1OnPrimary = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: AppColors.textOnPrimary,
  );

  // Button text
  static const TextStyle button = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textOnPrimary,
  );

  static const TextStyle buttonLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Helper methods для создания вариаций стилей
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  static TextStyle withSize(TextStyle style, double fontSize) {
    return style.copyWith(fontSize: fontSize);
  }

  static TextStyle withWeight(TextStyle style, FontWeight fontWeight) {
    return style.copyWith(fontWeight: fontWeight);
  }
}

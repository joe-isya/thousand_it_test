import 'package:flutter/material.dart';

/// Централизованное хранилище всех отступов и паддингов приложения
/// Использует принцип Single Responsibility из SOLID
class AppSpacing {
  // Приватный конструктор для предотвращения создания экземпляров
  AppSpacing._();

  // Базовые отступы
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;

  // SizedBox отступы (для удобства использования)
  static const SizedBox sizedBoxXs = SizedBox(height: xs, width: xs);
  static const SizedBox sizedBoxSm = SizedBox(height: sm, width: sm);
  static const SizedBox sizedBoxMd = SizedBox(height: md, width: md);
  static const SizedBox sizedBoxLg = SizedBox(height: lg, width: lg);
  static const SizedBox sizedBoxXl = SizedBox(height: xl, width: xl);
  static const SizedBox sizedBoxXxl = SizedBox(height: xxl, width: xxl);

  // Вертикальные отступы
  static const SizedBox verticalXs = SizedBox(height: xs);
  static const SizedBox verticalSm = SizedBox(height: sm);
  static const SizedBox verticalMd = SizedBox(height: md);
  static const SizedBox verticalLg = SizedBox(height: lg);
  static const SizedBox verticalXl = SizedBox(height: xl);
  static const SizedBox verticalXxl = SizedBox(height: xxl);

  // Горизонтальные отступы
  static const SizedBox horizontalXs = SizedBox(width: xs);
  static const SizedBox horizontalSm = SizedBox(width: sm);
  static const SizedBox horizontalMd = SizedBox(width: md);
  static const SizedBox horizontalLg = SizedBox(width: lg);
  static const SizedBox horizontalXl = SizedBox(width: xl);
  static const SizedBox horizontalXxl = SizedBox(width: xxl);

  // EdgeInsets для padding
  static const EdgeInsets paddingXs = EdgeInsets.all(xs);
  static const EdgeInsets paddingSm = EdgeInsets.all(sm);
  static const EdgeInsets paddingMd = EdgeInsets.all(md);
  static const EdgeInsets paddingLg = EdgeInsets.all(lg);
  static const EdgeInsets paddingXl = EdgeInsets.all(xl);
  static const EdgeInsets paddingXxl = EdgeInsets.all(xxl);

  // Горизонтальные padding
  static const EdgeInsets horizontalPaddingXs = EdgeInsets.symmetric(horizontal: xs);
  static const EdgeInsets horizontalPaddingSm = EdgeInsets.symmetric(horizontal: sm);
  static const EdgeInsets horizontalPaddingMd = EdgeInsets.symmetric(horizontal: md);
  static const EdgeInsets horizontalPaddingLg = EdgeInsets.symmetric(horizontal: lg);
  static const EdgeInsets horizontalPaddingXl = EdgeInsets.symmetric(horizontal: xl);
  static const EdgeInsets horizontalPaddingXxl = EdgeInsets.symmetric(horizontal: xxl);

  // Вертикальные padding
  static const EdgeInsets verticalPaddingXs = EdgeInsets.symmetric(vertical: xs);
  static const EdgeInsets verticalPaddingSm = EdgeInsets.symmetric(vertical: sm);
  static const EdgeInsets verticalPaddingMd = EdgeInsets.symmetric(vertical: md);
  static const EdgeInsets verticalPaddingLg = EdgeInsets.symmetric(vertical: lg);
  static const EdgeInsets verticalPaddingXl = EdgeInsets.symmetric(vertical: xl);
  static const EdgeInsets verticalPaddingXxl = EdgeInsets.symmetric(vertical: xxl);

  // Специфичные padding для карточек
  static const EdgeInsets cardPadding = EdgeInsets.all(lg);
  static const EdgeInsets cardPaddingSmall = EdgeInsets.all(md);

  // Padding для экранов
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: lg);
}

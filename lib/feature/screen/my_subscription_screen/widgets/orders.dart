import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppStrings.upcomingBooking, style: AppTextStyles.h2),
        Spacer(),
        Text(
          AppStrings.viewAll,
          style: AppTextStyles.bodySmall.copyWith(
            color: AppColors.primaryLight,
          ),
        ),
        SizedBox(width: 8),
        Icon(Icons.arrow_forward, color: AppColors.primaryLight),
      ],
    );
  }
}

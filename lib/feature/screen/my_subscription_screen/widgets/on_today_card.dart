import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';
import 'package:thousand_it_test/core/widgets/custom_button.dart';

class OnTodayCard extends StatelessWidget {
  const OnTodayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.wb_sunny_outlined,
                color: AppColors.primaryLight,
                size: 24,
              ),
              SizedBox(width: 8),
              Text(AppStrings.todayAtIslaSpa, style: AppTextStyles.bodyLarge),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: LinearProgressIndicator(
                    value: 0.65,
                    minHeight: 12,
                    backgroundColor: AppColors.border,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.primaryLight,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(AppStrings.occupancyPercent, style: AppTextStyles.bodySmall),
            ],
          ),
          SizedBox(height: 24),
          Text(
            AppStrings.comfortableTime,
            style: AppTextStyles.bodySmallRegular,
          ),
          SizedBox(height: 8),
          Text(AppStrings.optimalTime, style: AppTextStyles.bodySmall),
          SizedBox(height: 24),
          CustomButton.primary(
            text: AppStrings.book,
            onPressed: () {},
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

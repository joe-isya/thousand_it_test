import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';
import 'package:thousand_it_test/gen/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.subscriptionActive, style: AppTextStyles.caption),
            Text(
              AppStrings.locationBaytursynova,
              style: AppTextStyles.bodySmall,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.balanceZero, style: AppTextStyles.bodySmall),
                  SizedBox(width: 4),
                  Text(AppStrings.balance, style: AppTextStyles.bodySmall),
                  SizedBox(width: 4),
                  AppAssets.images.tugrik.image(
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(100),
              ),
              child: AppAssets.svg.notif.svg(
                height: 20,
                width: 20,
                colorFilter: ColorFilter.mode(
                  AppColors.background,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

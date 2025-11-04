import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';
import 'package:thousand_it_test/feature/screen/service_detail_screen/service_detail_screen.dart';
import 'package:thousand_it_test/gen/assets.gen.dart';

class AdditionalServices extends StatelessWidget {
  const AdditionalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.additionalServices, style: AppTextStyles.h2),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ServiceCard(
                title: AppStrings.massage,
                description: AppStrings.massageDescription,
                icon: AppAssets.svg.handHeart.path,
                backgroundColor: AppColors.massageBackground,
                iconColor: AppColors.massageBackground,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ServiceCard(
                title: AppStrings.spaProcedures,
                description: AppStrings.spaDescription,
                icon: AppAssets.svg.lotus.path,
                backgroundColor: AppColors.spaBackground,
                iconColor: AppColors.spaBackground,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final Color backgroundColor;
  final Color iconColor;

  const ServiceCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder:
                (context) => ServiceDetailScreen(
                  title: title,
                  description: description,
                  backgroundColor: backgroundColor,
                ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(icon, width: 24, height: 24),
            ),
            SizedBox(height: 20),
            Text(title, style: AppTextStyles.bodyLarge),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';
import 'package:thousand_it_test/core/widgets/custom_button.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;

  const ServiceDetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(title, style: AppTextStyles.h2),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(child: Text(title, style: AppTextStyles.h1)),
              ),
              SizedBox(height: 24),
              Text(title, style: AppTextStyles.h1),
              SizedBox(height: 16),
              Text(description, style: AppTextStyles.bodySmallRegular),
              Spacer(),
              CustomButton.primary(
                text: AppStrings.add,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                width: double.infinity,
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

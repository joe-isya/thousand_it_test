import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_dimensions.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';

enum ButtonType { primary, secondary }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonType type;
  final double? height;
  final double? width;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = ButtonType.primary,
    this.height,
    this.width,
  });

  factory CustomButton.primary({
    required String text,
    VoidCallback? onPressed,
    double? height,
    double? width,
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      type: ButtonType.primary,
      height: height,
      width: width,
    );
  }

  factory CustomButton.secondary({
    required String text,
    VoidCallback? onPressed,
    double? height,
    double? width,
  }) {
    return CustomButton(
      text: text,
      onPressed: onPressed,
      type: ButtonType.secondary,
      height: height,
      width: width,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPrimary = type == ButtonType.primary;

    return SizedBox(
      height: height ?? AppDimensions.buttonHeightSmall,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isPrimary ? AppColors.primary : AppColors.lightGray,
          foregroundColor:
              isPrimary ? AppColors.textOnPrimary : AppColors.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: AppDimensions.borderRadiusSmall,
          ),
          elevation: 0,
          textStyle: AppTextStyles.button,
        ),
        child: Text(text),
      ),
    );
  }
}

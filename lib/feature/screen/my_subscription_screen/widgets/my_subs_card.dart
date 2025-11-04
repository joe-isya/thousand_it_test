import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';
import 'package:thousand_it_test/core/widgets/custom_button.dart';

class MySubsCard extends StatelessWidget {
  const MySubsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 203,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: AppColors.subscriptionGradient,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.threeMonth,
                    style: AppTextStyles.bodyMediumOnPrimary,
                  ),
                  SizedBox(height: 4),
                  Text(
                    AppStrings.mySubscription,
                    style: AppTextStyles.h1OnPrimary,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => _showQrCodeDialog(context),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    AppStrings.qrCode,
                    style: AppTextStyles.buttonLarge,
                  ),
                ),
              ),
            ],
          ),

          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppStrings.visitsRemaining,
                style: AppTextStyles.bodySmallOnPrimary,
              ),
              Text(
                AppStrings.validUntil,
                style: AppTextStyles.bodySmallOnPrimary,
              ),
            ],
          ),
          SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: LinearProgressIndicator(
              value: 0.5,
              minHeight: 8,
              backgroundColor: AppColors.whiteWithOpacity(0.24),
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.textOnPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showQrCodeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: AppColors.cardBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(AppStrings.qrCode, style: AppTextStyles.h2),
                SizedBox(height: 24),
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: QrImageView(
                      data: 'MY_SUBSCRIPTION_QR_CODE',
                      version: QrVersions.auto,
                      size: 200.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                CustomButton.primary(
                  text: AppStrings.close,
                  onPressed: () => Navigator.of(context).pop(),
                  width: double.infinity,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

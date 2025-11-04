import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';
import 'package:thousand_it_test/core/widgets/custom_button.dart';
import 'package:thousand_it_test/gen/assets.gen.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

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
              Text(AppStrings.roomNumber, style: AppTextStyles.h3),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  color: AppColors.success,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    AppAssets.svg.calendarBlank.svg(),
                    SizedBox(width: 4),
                    Text(
                      AppStrings.statusBooked,
                      style: AppTextStyles.bodySmallRegular.copyWith(
                        color: AppColors.textOnPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          _getDescription(
            icon: AppAssets.svg.calendarGold.svg(height: 16, width: 16),
            text: AppStrings.dateTimeOctober14,
          ),
          SizedBox(height: 6),
          _getDescription(
            icon: AppAssets.svg.alarm.svg(height: 16, width: 16),
            text: AppStrings.twoHours,
          ),
          SizedBox(height: 6),
          _getDescription(
            icon: AppAssets.svg.gift.svg(height: 16, width: 16),
            text: AppStrings.giftHours,
          ),
          SizedBox(height: 6),
          _getDescription(
            icon: AppAssets.svg.tshirt.svg(height: 16, width: 16),
            text: AppStrings.bringSwimwear,
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: CustomButton.secondary(
                  text: AppStrings.cancel,
                  onPressed: () => _showCancelDialog(context),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: CustomButton.primary(
                  text: AppStrings.qrCode,
                  onPressed: () => _showQrCodeDialog(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getDescription({required Widget icon, required String text}) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8),
        Text(text, style: AppTextStyles.bodySmallRegular),
      ],
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.cardBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Text(AppStrings.cancelBookingTitle, style: AppTextStyles.h2),
          content: Text(
            AppStrings.cancelBookingMessage,
            style: AppTextStyles.bodySmallRegular,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                AppStrings.no,
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                AppStrings.yes,
                style: AppTextStyles.bodySmall.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        );
      },
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
                      data: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
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

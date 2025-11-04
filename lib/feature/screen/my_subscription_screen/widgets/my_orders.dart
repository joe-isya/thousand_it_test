import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
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
              Text(
                '911',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
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
                      'Заборонирован',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
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
            text: '14 Октября, 11:30',
          ),
          SizedBox(height: 6),
          _getDescription(
            icon: AppAssets.svg.alarm.svg(height: 16, width: 16),
            text: '2 часа',
          ),
          SizedBox(height: 6),
          _getDescription(
            icon: AppAssets.svg.gift.svg(height: 16, width: 16),
            text: '+ 2 часа в подарок (бассейн, джакузи, хамам)',
          ),
          SizedBox(height: 6),
          _getDescription(
            icon: AppAssets.svg.tshirt.svg(height: 16, width: 16),
            text: 'Возьмите купальник и плавки',
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: CustomButton.secondary(
                  text: 'Отменить',
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: CustomButton.primary(text: 'QR код', onPressed: () {}),
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
        Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }
}

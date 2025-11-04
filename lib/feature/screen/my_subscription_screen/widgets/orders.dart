import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Ближайшая бронь',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Spacer(),
        Text(
          'Смотреть все',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryLight,
          ),
        ),
        SizedBox(width: 8),
        Icon(Icons.arrow_forward, color: AppColors.primaryLight),
      ],
    );
  }
}

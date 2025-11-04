import 'package:flutter/material.dart';
import 'package:thousand_it_test/core/constants/app_strings.dart';
import 'package:thousand_it_test/core/theme/app_colors.dart';
import 'package:thousand_it_test/core/theme/app_text_styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cardBackground,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: 92,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getNavigation(title: AppStrings.navHome, icon: Icons.home, index: 0),
          _getNavigation(
            title: AppStrings.navSubscription,
            icon: Icons.calendar_month,
            index: 1,
          ),
          _getNavigation(
            title: AppStrings.navQr,
            icon: Icons.qr_code_rounded,
            index: 2,
          ),
          _getNavigation(
            title: AppStrings.navBooking,
            icon: Icons.note_alt_sharp,
            index: 3,
          ),
          _getNavigation(
            title: AppStrings.navProfile,
            icon: Icons.person_outline,
            index: 4,
          ),
        ],
      ),
    );
  }

  Widget _getNavigation({
    required String title,
    required IconData icon,
    required int index,
  }) {
    final isSelected = _selectedIndex == index;
    final color = isSelected ? AppColors.primary : AppColors.secondary;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Icon(icon, color: color),
          Text(
            title,
            style: AppTextStyles.bodySmallRegular.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}

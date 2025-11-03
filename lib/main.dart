import 'package:flutter/material.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/my_subscription_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(245, 255, 255, 255),
        bottomNavigationBar: BottomNavBar(),
        body: SafeArea(child: MySubscriptionScreen()),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: 92,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getNavigation(title: 'Главная', icon: Icons.home, index: 0),
          _getNavigation(
            title: 'Абонемент',
            icon: Icons.calendar_month,
            index: 1,
          ),
          _getNavigation(title: 'QR', icon: Icons.qr_code_rounded, index: 2),
          _getNavigation(title: 'Бронь', icon: Icons.note_alt_sharp, index: 3),
          _getNavigation(
            title: 'Профиль',
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
    final color = isSelected ? Color(0xFFF5C85C) : Color(0xFF878787);

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
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

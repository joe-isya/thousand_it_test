import 'package:flutter/material.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/my_subscription_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MySubscriptionScreen());
  }
}

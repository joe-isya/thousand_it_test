import 'package:flutter/material.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/additional_services.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/header.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/my_orders.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/my_subs_card.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/on_today_card.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/orders.dart';

class MySubscriptionScreen extends StatelessWidget {
  const MySubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: MySubscriptionScreenContent(),
      ),
    );
  }
}

class MySubscriptionScreenContent extends StatelessWidget {
  const MySubscriptionScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(),
        SizedBox(height: 16),
        MySubsCard(),
        SizedBox(height: 16),
        OnTodayCard(),
        SizedBox(height: 16),
        Orders(),
        SizedBox(height: 16),
        MyOrders(),
        SizedBox(height: 16),
        AdditionalServices(),
        SizedBox(height: 16),
      ],
    );
  }
}

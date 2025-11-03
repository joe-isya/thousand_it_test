import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thousand_it_test/feature/screen/my_subscription_screen/widgets/my_subs_card.dart';
import 'package:thousand_it_test/gen/assets.gen.dart';

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
            color: Color(0xFFE8C15E),
          ),
        ),
        SizedBox(width: 8),
        Icon(Icons.arrow_forward, color: Color(0xFFE8C15E)),
      ],
    );
  }
}

class OnTodayCard extends StatelessWidget {
  const OnTodayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFE0E0E0), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.wb_sunny_outlined, color: Color(0xFFE8C15E), size: 24),
              SizedBox(width: 8),
              Text(
                'Сегодня в ISLA Spa',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: LinearProgressIndicator(
                    value: 0.65,
                    minHeight: 12,
                    backgroundColor: Color(0xFFE0E0E0),
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xFFE8C15E),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                '65%',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 24),
          Text(
            'Комфортное время для посещения',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Оптимально с 10:00 до 13:00',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: 36,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF5C85C),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Бронировать',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xFFE0E0E0), width: 1),
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
                  color: Color(0xFFACDA3B),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      size: 12,
                      color: Colors.white,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Заборонирован',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Icon(Icons.calendar_today),
              SizedBox(width: 8),
              Text(
                '14 Октября, 11:30',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.alarm),
              SizedBox(width: 8),
              Text(
                '2 часа',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.card_giftcard),
              SizedBox(width: 8),
              Text(
                '+ 2 часа в подарок (бассейн, джакузи, хамам)',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.abc),
              SizedBox(width: 8),
              Text(
                'Возьмите купальник и плавки',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF8F8F8),
                      foregroundColor: Color(0xFF878787),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Отменить',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF5C85C),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'QR код',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Абонемент активен',
              style: TextStyle(
                color: Color(0xFF878787),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
            Text(
              'Байтурсынова / Сатпаева',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'баланс',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 4),
                  Assets.images.tugrik.image(
                    width: 16,
                    height: 16,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5C85C),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Assets.svg.notif.svg(
                height: 20,
                width: 20,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AdditionalServices extends StatelessWidget {
  const AdditionalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Доп.услуги',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ServiceCard(
                title: 'Массажи',
                icon: Assets.svg.handHeart.path,
                backgroundColor: Color(0xFFFCEFD0),
                iconColor: Color(0xFFFCEFD0),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: ServiceCard(
                title: 'SPA-процедуры',
                icon: Assets.svg.lotus.path,
                backgroundColor: Color(0xFFEAF4D0),
                iconColor: Color(0xFFEAF4D0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String icon;
  final Color backgroundColor;
  final Color iconColor;

  const ServiceCard({
    super.key,
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(icon, width: 24, height: 24),
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:app_store/src/config/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                  text: 'Ifood',
                  style: TextStyle(
                      color: CustomColor.customSwatchColor,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: 'Market',
                  style: TextStyle(
                      color: CustomColor.customPurpleColor,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        actions: [
          badges.Badge(
            onTap: () {},
            badgeContent: const Text(
              '1',
              style: TextStyle(color:Colors.white, fontWeight:  FontWeight.bold, fontSize: 10),
            ),
            child: const Icon(Icons.shopping_cart, color: Colors.red),
            badgeAnimation: const badges.BadgeAnimation.fade(),
            badgeStyle: badges.BadgeStyle(
              badgeColor: const Color.fromARGB(255, 100, 17, 114).withAlpha(200),
            ),
          ),
        ],
      ),
    );
  }
}

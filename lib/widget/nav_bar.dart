import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:men4you/presentations/account_screen/account_screen.dart';
import 'package:men4you/presentations/cart_screen/cart_screen.dart';
import 'package:men4you/presentations/category/category_screen.dart';
import 'package:men4you/presentations/home_screen/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  int currentIdex;
  BottomNavBar({Key? key, required this.currentIdex}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
        initialActiveIndex: widget.currentIdex,
        elevation: 0,
        curveSize: 100,
        items: [
          TabItem(icon: Icons.explore_outlined, title: 'home'.tr),
          TabItem(icon: Icons.favorite_border, title: 'cart'.tr),
          TabItem(icon: Icons.category, title: 'category'.tr),
          TabItem(icon: Icons.perm_identity_outlined, title: 'account'.tr),
        ],
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const HomeScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    const CartScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          }
          if (index == 2) {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    CategoryScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          }
          if (index == 3) {
            Navigator.pushReplacement(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) =>
                    AccountScreen(),
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
              ),
            );
          }
        });
  }
}

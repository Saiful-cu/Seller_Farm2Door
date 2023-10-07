import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:seller/const/color.dart';
import 'package:seller/views/screen/nav/tools_page.dart';
import 'package:seller/views/screen/nav/home_page.dart';
import 'package:seller/views/screen/nav/message_page.dart';
import 'package:seller/views/screen/nav/store_page.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  List<TabItem> items = [
    const TabItem(
      icon: Icons.dashboard,
      title: 'Dashboard',
    ),
    const TabItem(
      icon: Icons.cable,
      title: 'Tools',
    ),
    const TabItem(
      icon: Icons.message_rounded,
      title: 'Message',
    ),
    const TabItem(
      icon: Icons.storefront,
      title: 'Store',
    ),
  ];
  List<Widget> pages = [
    HomePage(),
    ProductPage(),
    MessagePage(),
    StoreSettingsPage()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarFloating(
        items: items,
        backgroundColor: Colors.white,
        bottom: 10,
        color: inactivePrimary,
        colorSelected: primary,
        titleStyle: TextStyle(color: Colors.red),
        indexSelected: currentIndex,
        onTap: (i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}

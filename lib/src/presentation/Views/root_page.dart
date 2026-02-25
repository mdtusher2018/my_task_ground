import 'package:flutter/material.dart';
import 'package:scube_task/src/core/themes/colors.dart';
import 'package:scube_task/src/presentation/Views/all_products/all_products_page.dart';

import 'package:scube_task/src/presentation/shared/components/common_text.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    Center(child: CommonText("Not implemented", size: 18)),
    Center(child: CommonText("Not implemented", size: 18)),
    Center(child: CommonText("Not implemented", size: 18)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.primary,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assest/image/home.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assest/image/message.png',
              width: 24,
              height: 24,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assest/image/order.png', width: 24, height: 24),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assest/image/profile.png',
              width: 24,
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

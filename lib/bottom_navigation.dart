import 'package:flutter/material.dart';
import 'package:mhyshop/page/cart_page.dart';
import 'package:mhyshop/page/home_page.dart';
import 'package:mhyshop/page/order_page.dart';
import 'package:mhyshop/page/profile_page.dart';
import 'package:mhyshop/page/wallet_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    OrderPage(),
    WalletPage(),
    PorfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontFamily: 'Poppins'),
          unselectedLabelStyle: TextStyle(fontFamily: 'Poppins'),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon/home_outlined.png'),
              label: 'Home',
              activeIcon: Image.asset('assets/icon/home_filled.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon/shopping_bag_outlined.png'),
              label: 'Cart',
              activeIcon: Image.asset('assets/icon/shopping_bag_filled.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon/shopping_cart_outlined.png'),
              label: 'Order',
              activeIcon: Image.asset('assets/icon/shopping_cart_filled.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon/wallet_outlined.png'),
              label: 'Wallet',
              activeIcon: Image.asset('assets/icon/wallet_filled.png'),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icon/profile_outlined.png'),
              label: 'Profile',
              activeIcon: Image.asset('assets/icon/profile_filled.png'),
            ),
          ],
        ),
      ),
    );
  }
}

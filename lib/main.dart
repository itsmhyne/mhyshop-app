import 'package:flutter/material.dart';
import 'package:mhyshop/bottom_navigation.dart';
import 'package:mhyshop/page/listtest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MhyShop',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      // home: ListTest(),
      home: BottomNavigation(),
    );
  }
}

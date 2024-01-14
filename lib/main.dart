import 'package:coffee/screens/Dashboard.dart';
import 'package:coffee/screens/ItemDetail.dart';
import 'package:coffee/screens/delivery.dart';
import 'package:coffee/screens/home_screen.dart';
import 'package:coffee/screens/order.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    const MyApp(),
    // DevicePreview(
    //   builder: (context) => const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee With IT',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color.fromRGBO(199, 124, 78, 1),
        ),
        primaryColor: const Color.fromRGBO(199, 124, 78, 1),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: HomeScreen()
      routes: {
        '/': (context) => const HomeScreen(),
        '/dash': (context) => const Dashboard(),
        '/detail': (context) => const ItemDetail(),
        '/order': (context) => const Order(),
        '/delivery': (context) => const Delivery(),
      },
    );
  }
}

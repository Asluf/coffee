import 'package:coffee/screens/Dashboard.dart';
import 'package:coffee/screens/Home.dart';
import 'package:coffee/screens/Home.dart';
import 'package:coffee/screens/demo.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Color.fromRGBO(199, 124, 78, 1),
          ),
          primaryColor: Color.fromRGBO(199, 124, 78, 1)),
      //home: const Demo(),
      home: Dashboard(),
    );
  }
}

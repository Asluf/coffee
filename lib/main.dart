import 'package:coffee/screens/delivery.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    //const MyApp()
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cofee With IT',
      debugShowCheckedModeBanner: false,
      home: Delivery(),
    );
  }
}

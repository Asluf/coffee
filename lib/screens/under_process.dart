import 'package:flutter/material.dart';

class UnderProcess extends StatefulWidget {
  const UnderProcess({super.key});

  @override
  State<UnderProcess> createState() => _UnderProcessState();
}

class _UnderProcessState extends State<UnderProcess> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.hourglass_empty,
              size: 100,
              color: Color.fromRGBO(199, 124, 78, 1),
            ),
            SizedBox(height: 20),
            Text(
              'Page is Under Process',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(
              color: Color.fromRGBO(199, 124, 78, 1),
            ),
          ],
        ),
      ),
    );
  }
}

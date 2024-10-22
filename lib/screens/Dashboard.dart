import 'package:coffee/screens/Home.dart';
import 'package:coffee/screens/under_process.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final pages = [
    Home(),
    const UnderProcess(),
    const UnderProcess(),
    const UnderProcess(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: PageView(
        //   children: pages,
        //   onPageChanged: (index) {
        //     print("Page changed to index $index");
        //     setState(() {
        //       currentIndex = index;
        //     });
        //   },
        // ),
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.home,
                    color: Color.fromARGB(255, 132, 143, 132)),
                activeIcon: Icon(IconlyBold.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.heart,
                    color: Color.fromARGB(255, 132, 143, 132)),
                activeIcon: Icon(IconlyBold.heart),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.bag,
                    color: Color.fromARGB(255, 132, 143, 132)),
                activeIcon: Icon(IconlyBold.bag),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyBold.notification,
                    color: Color.fromARGB(255, 132, 143, 132)),
                activeIcon: Icon(IconlyBold.notification),
                label: '',
              ),
            ]));
  }
}

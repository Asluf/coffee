import 'dart:math';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int _selectedNumber = 1;

  int _selectedTabIndex = 0;

  void _increment() {
    setState(() {
      _selectedNumber++;
    });
  }

  void _decrement() {
    setState(() {
      if (_selectedNumber > 1) {
        _selectedNumber--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 100.0),
                  child: const Text(
                    'Orders',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: buildTabButton('Delivary', 0, const Size(80, 40)),
                ),
                Expanded(
                  child: buildTabButton('Pickup', 1, const Size(80, 40)),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Text(
              'Delivery Address',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'JI. Kpg Sutoyo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Kpg sutoyo No 620, Bilzen Tanjungbalai',
              style: TextStyle(
                color: Color.fromARGB(255, 136, 133, 133),
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    print('Edit Address Pressed!');
                  },
                  icon: const Icon(
                    Icons.edit_square,
                    size: 15,
                  ),
                  label: const Text(
                    'Edit Address',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        const Size(150.0, 30.0)),
                    minimumSize: MaterialStateProperty.all<Size>(
                        const Size(150.0, 30.0)),
                    maximumSize: MaterialStateProperty.all<Size>(
                        const Size(150.0, 30.0)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    print('Add Node Pressed!');
                  },
                  icon: const Icon(
                    Icons.add_box_outlined,
                    size: 15,
                  ),
                  label: const Text(
                    'Add Node',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                        const Size(150.0, 30.0)),
                    minimumSize: MaterialStateProperty.all<Size>(
                        const Size(150.0, 30.0)),
                    maximumSize: MaterialStateProperty.all<Size>(
                        const Size(150.0, 30.0)),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Color.fromARGB(255, 207, 204, 204),
              thickness: 1.0,
            ),
            SizedBox(
              height: 70,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Image.asset(
                      'assets/Rectangle.png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Cappuccino',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'With chocolate',
                        style: TextStyle(
                          color: Color.fromARGB(255, 204, 200, 200),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle_outline_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 201, 197, 197),
                          ),
                          onPressed: _decrement,
                        ),
                        const SizedBox(width: 1.0),
                        Text(
                          '$_selectedNumber',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 1.0),
                        IconButton(
                          icon: const Icon(
                            Icons.add_circle_outline_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 201, 197, 197),
                          ),
                          onPressed: _increment,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2),
            const Divider(
              color: Color.fromARGB(255, 207, 204, 204),
              thickness: 2.0,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('Button 5 Pressed!');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white, // Set your desired background color here
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  const Size(90.100, 50.40),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(255, 141, 133, 133),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/discount.png',
                    height: 20,
                    width: 20,
                  ),
                  const Text(
                    '1 Discount is applied',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5.0),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Payment Summary',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 18.0),
                  child: const Text(
                    'Price',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    '\$ 50.53',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 18.0),
                  child: const Text(
                    'Delivery fees',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    '\$ 20.0',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 207, 204, 204),
              thickness: 1.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 18.0),
                  child: const Text(
                    'Total Payment',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: const Text(
                    '\$ 70.53',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15.0),
                  child: Image.asset(
                    'assets/dollar.png',
                    height: 30,
                    width: 30,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        child: ElevatedButton(
                            onPressed: () {
                              // Add your button press logic here
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFC67C4E),
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                            child: const Text(
                              'Cash',
                              style: TextStyle(fontSize: 12.0),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 0), // Set left margin to 0

                        child: ElevatedButton(
                          onPressed: () {
                            // Add your button press logic here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFF6F6F6),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                          child: const Text(
                            '\$ 5.63',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const CircleAvatar(
                  radius: 15, // Set your desired radius

                  backgroundColor: Color(0xFF808080),

                  child: Icon(
                    Icons.more_horiz_rounded,

                    color: Colors.white, // Set your desired icon color
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/delivery');
              },
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all<Size>(
                  const Size(400.0, 80.0),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFFC67C4E),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Color.fromARGB(248, 250, 249, 249),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              child: const Text(
                'Order',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabButton(String label, int index, Size buttonSize) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedTabIndex = index;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          _selectedTabIndex == index
              ? const Color(0xFFC67C4E)
              : const Color.fromARGB(255, 230, 226, 226),
        ),

        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),

        fixedSize: MaterialStateProperty.all<Size>(buttonSize),

        minimumSize: MaterialStateProperty.all<Size>(buttonSize),

        maximumSize: MaterialStateProperty.all<Size>(buttonSize),

        // minWidth: MaterialStateProperty.all<double>(minWidth ?? 100.0),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: _selectedTabIndex == index
              ? const Color.fromARGB(255, 240, 237, 237)
              : Colors.black,
        ),
      ),
    );
  }
}

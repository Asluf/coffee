import 'package:coffee/screens/panel_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    final hei = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SlidingUpPanel(
        minHeight: hei * 0.2,
        maxHeight: hei * 0.49,
        // parallaxEnabled: true,
        // parallaxOffset: 0.5,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        body: mapContent(context),
        panelBuilder: (controller) => PanelWidget(controller: controller),
      ),
    );
  }

  Widget mapContent(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'resources/mapss.png',
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 55.0,
          left: 35.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(255, 255, 255, 255)),
              elevation: const MaterialStatePropertyAll(4),
              fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: 55.0,
          right: 35.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.white),
              elevation: const MaterialStatePropertyAll(4),
              fixedSize: const MaterialStatePropertyAll(Size(50, 50)),
              padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: const Icon(
              Icons.my_location,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

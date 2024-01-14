import 'package:flutter/material.dart';

class PanelWidget extends StatefulWidget {
  const PanelWidget({super.key, required this.controller});
  final ScrollController controller;

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) {
    final hei = MediaQuery.of(context).size.height;
    final wid = MediaQuery.of(context).size.width;

    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      controller: widget.controller,
      children: [
        //small bar
        Center(
          child: Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          alignment: Alignment.center,
          child: const Text(
            "10 minutes left",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Delivery to ",
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
            const Text(
              "Ji. Kpg Sutoyo",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Container(
              width: (wid / 5),
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
            ),
            const SizedBox(width: 10),
            Container(
              width: (wid / 5),
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
            ),
            const SizedBox(width: 10),
            Container(
              width: (wid / 5),
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
            ),
            const SizedBox(width: 10),
            Container(
              width: (wid / 5),
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15)),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          padding: const EdgeInsets.all(10),
          width: wid - 150,
          height: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              width: 1.5,
              color: const Color.fromARGB(255, 226, 222, 222),
            ),
          ),
          child: Row(
            children: [
              // Container(
              //   margin: const EdgeInsets.all(10),
              //   padding: EdgeInsets.all(10),
              //   width: (wid - 150) / 3,
              //   height: 80,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     border: Border.all(
              //       width: 1,
              //       color: const Color.fromARGB(255, 209, 203, 203),
              //     ),
              //     image: const DecorationImage(
              //         image: AssetImage(
              //           'resources/motorbike.png',
              //         ),

              //         fit: BoxFit.contain),
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                width: (wid - 150) / 3,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 1,
                    color: const Color.fromARGB(255, 209, 203, 203),
                  ),
                ),
                child: const Image(
                  image: AssetImage('resources/motorbike.png'),
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Delivered your order",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "We deliver your goods to you in the shortest possible time.",
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Container(
              width: 65,
              height: 65,
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                  image: const DecorationImage(
                      image: AssetImage('resources/asf.PNG'),
                      fit: BoxFit.cover)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Johan Hawn",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 11),
                Text(
                  "Personal Courier",
                  style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color.fromARGB(255, 233, 228, 228),
                  width: 2.0,
                ),
              ),
              child: Ink(
                decoration: ShapeDecoration(
                  color: Colors.grey[300],
                  shape: const CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone_in_talk_rounded,
                    size: 40,
                  ),
                  color: Colors.grey[500], // Set your desired icon color
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

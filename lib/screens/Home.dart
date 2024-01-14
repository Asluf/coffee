import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _Home1State();
}

class _Home1State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          // fit: StackFit.expand,
          children: [
            Container(
              height: 280.0,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    Color.fromARGB(255, 30, 30, 30),
                    Colors.black,
                    Color.fromARGB(255, 71, 68, 68),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: Column(children: [
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                color: Color.fromARGB(255, 132, 129, 129),
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Bilzen, Tanjungbalai',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 150),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Image.asset(
                                  'resources/profile_picture.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ])
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: SizedBox(
                        height: 50.0,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 72, 69, 69),
                            hintText: "Search coffee",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 151, 144, 144)),
                            isDense: true,
                            contentPadding: EdgeInsets.all(20),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(0),
                        child: SizedBox(
                            height: 150.0,
                            child: Row(children: [
                              Container(
                                height: 150,
                                width: 340,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 72, 69, 69),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset(
                                  'resources/Home_page.png', // Replace with your image asset
                                  fit: BoxFit.cover, // Adjust the fit as needed
                                ),
                              ),
                            ]))),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomButton(text: 'Cappuccino', isActive: true),
                          CustomButton(text: 'Machiato'),
                          CustomButton(text: 'Latte'),
                          CustomButton(text: 'Americano'),
                        ],
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: 0.72,
                      ),
                      itemCount: ProductList.length,
                      itemBuilder: (BuildContext context, int index) {
                        // returning the cart
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ReviewProposal(proposalList: proposalList)),
                            // );
                          },
                          child: Card(
                            clipBehavior: Clip.antiAlias, //clip the edges
                            elevation: 0.1,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              side: BorderSide(
                                width: 0.2,
                                color: Colors.grey,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // image
                                Stack(children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/detail');
                                    },
                                    child: Container(
                                      height: 120,
                                      alignment: Alignment.topRight,
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        image: AssetImage(
                                            ProductList[index].Image),
                                        fit: BoxFit.cover,
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Positioned(
                                      child: Row(
                                        children: [
                                          const Icon(Icons.star,
                                              color: Color.fromARGB(
                                                  220, 255, 235, 59),
                                              size: 13),
                                          Text(
                                            " ${ProductList[index].Rate}",
                                            style: const TextStyle(
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ProductList[index].Name,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 3, 0, 3),
                                        child: Text(
                                          ProductList[index].Description,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "\$ ${ProductList[index].Price}",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Spacer(),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                      199, 124, 78, 1),
                                              minimumSize: const Size(5, 40),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ]),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final bool isActive;

  const CustomButton({
    super.key,
    required this.text,
    this.isActive = false,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary:
                isActive ? const Color.fromRGBO(199, 124, 78, 1) : Colors.white,
            minimumSize:
                const Size(110.0, 50.0), // Adjust width and height as needed
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(13.0), // Adjust the radius as needed
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.black,
                fontFamily: "Calibri",
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ));
  }
}

class Product {
  final String Name;
  final String Description;
  final String Image;
  final double Price;
  final double Rate;

  Product({
    required this.Name,
    required this.Description,
    required this.Image,
    required this.Price,
    required this.Rate,
  });
}

List<Product> ProductList = [
  Product(
    Name: 'Cappucino',
    Description: "with Chocolate",
    Image: "resources/Rectangle 1706.png",
    Price: 4.53,
    Rate: 4.8,
  ),
  Product(
    Name: 'Cappucino',
    Description: "with Oat Milk",
    Image: "resources/coffee2.jpeg",
    Price: 3.90,
    Rate: 4.9,
  ),
  Product(
    Name: 'Cappucino',
    Description: "Sample",
    Image: "resources/coffee3.jpeg",
    Price: 220.00,
    Rate: 4.5,
  ),
  Product(
    Name: 'Cappucino',
    Description: "Sample",
    Image: "resources/Rectangle 1706.png",
    Price: 220.00,
    Rate: 4.0,
  ),
];

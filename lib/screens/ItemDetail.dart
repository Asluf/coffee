import 'package:flutter/material.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({Key? key}) : super(key: key);

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [            
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        Text(
                          'Detail',                          
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(              
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.black,
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0), 
                child: Image.asset(
                  'assets/Rectangle 1706.png',
                  height: 250,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Cappucino', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),         
                  Text('with Chocolate'),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(              
                children: [
                  Icon(Icons.star, color: Colors.amber,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: '4.8', style: Theme.of(context).textTheme.bodyLarge),
                        const TextSpan(text: '(230)'),
                      ])),
                  // Image.asset('Frame 19.png'),
                  // Image.asset('Frame 20.png')
                ],
              ),
            ),

            Divider(
                    color: Colors.grey,
                    thickness: 1,
                    
                  ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                                    
                  SizedBox(height: 8), 
                  Text(
                    'A cappuccino is an approximately 150 ml (5oz) beverage, with 25 ml of espresso coffee and 85 ml of fresh milk the fo..'),
                  Text('Read more', style: TextStyle(color: Color.fromARGB(255, 233, 142, 6)),),
                ],
              ),
            ),          
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Size',
                style: TextStyle(
                  
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                ),
                ),
            ),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSizeButton('S', buttonWidth: 118.0),
                _buildSizeButton('M', buttonWidth: 118.0),
                _buildSizeButton('L', buttonWidth: 118.0),
              ],
            ),

            SizedBox(height: 20),
                        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price'),
                      Text("\$ 4.53", 
                      style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 233, 142, 6),),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 50), 
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 233, 142, 6),
                    minimumSize: Size(250, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSizeButton(String size, {double buttonWidth = 120.0}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: Colors.white, 
      onPrimary: Colors.black, 
      minimumSize: Size(buttonWidth, 50.0), 
    ),
    child: Text(size),
  );
}
}

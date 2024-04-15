import 'package:flutter/material.dart';

import 'home_page.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Order',style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: ListView(
        children: const [
          OrderItem(
            name: 'Cinnamon',
            details: 'Ground cinnamon',
            price: 3.50,
            imagePath: 'assets/spice_0.jpg',
          ),
          OrderItem(
            name: 'Turmeric',
            details: 'Powdered turmeric',
            price: 1.80,
            imagePath: 'assets/spice_1.jpg',
          ),
          OrderItem(
            name: 'Cloves',
            details: 'Whole cloves',
            price: 5.40,
            imagePath: 'assets/spice_2.jpg',
          ),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String name;
  final String details;
  final double price;
  final String imagePath;

  const OrderItem({super.key,
    required this.name,
    required this.details,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(name),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Details: $details'),
          Text('Price: \$${price.toStringAsFixed(2)}'),
        ],
      ),
      onTap: () {
        // Handle onTap event if needed
      },
    );
  }
}

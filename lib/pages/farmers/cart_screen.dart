import 'package:flutter/material.dart';

import 'home_page.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Cart',style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: ListView(
        children: const [
          CartItem(
            name: 'Cinnamon',
            details: 'Ground cinnamon',
            price: 3.50,
            quantity: 2,
            imagePath: 'assets/spice_0.jpg',
          ),
          CartItem(
            name: 'Turmeric',
            details: 'Powdered turmeric',
            price: 1.80,
            quantity: 1,
            imagePath: 'assets/spice_1.jpg',
          ),
          CartItem(
            name: 'Cloves',
            details: 'Whole cloves',
            price: 5.40,
            quantity: 3,
            imagePath: 'assets/spice_2.jpg',
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final String details;
  final double price;
  final int quantity;
  final String imagePath;

  const CartItem({super.key,
    required this.name,
    required this.details,
    required this.price,
    required this.quantity,
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
          Text('Quantity: $quantity'),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          // Handle delete item from cart
        },
      ),
      onTap: () {
        // Handle onTap event if needed
      },
    );
  }
}

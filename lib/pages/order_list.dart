import 'package:flutter/material.dart';

class OrdersListPage extends StatelessWidget {
  const OrdersListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders List'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Today',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            buildOrderItem(
              context,
              'assets/cardamom.png',
              'Cardamom',
              'Njallanni',
              10.99,
            ),
            buildOrderItem(
              context,
              'assets/cinnamon.png',
              'Cinnamon',
              'Description of Spice 2',
              15.99,
            ),
            const SizedBox(height: 32),
            const Text(
              'Past',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            buildOrderItem(
              context,
              'assets/cloves.png',
              'Cloves',
              'Description of Spice 3',
              8.99,
            ),
            buildOrderItem(
              context,
              'assets/ginger.png',
              'Ginger',
              'Description of Spice 4',
              12.99,
            ),
            buildOrderItem(
              context,
              'assets/turmeric.png',
              'Turmeric',
              'Description of Spice 5',
              18.99,
            ),
            buildOrderItem(
              context,
              'assets/blackpepper.png',
              'Black Pepper',
              'Description of Spice 7',
              13.99,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOrderItem(
      BuildContext context,
      String imagePath,
      String name,
      String description,
      double price,
      ) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        title: Text(name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
            Text(
              '\$$price',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onTap: () {
          // Handle tapping on the order item
        },
      ),
    );
  }
}

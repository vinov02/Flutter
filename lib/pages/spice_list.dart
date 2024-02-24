import 'package:flutter/material.dart';

import 'home_page.dart';

class SpiceDetailsPage extends StatelessWidget {
  final Spice spice;

  const SpiceDetailsPage({Key? key, required this.spice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(spice.name,style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/${spice.image}',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Name: ${spice.name}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Price: Rs.${spice.price}',
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey
              ),
                onPressed: (){}, child: const Text('Update',style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}

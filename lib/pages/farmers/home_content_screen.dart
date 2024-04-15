import 'package:flutter/material.dart';

class HomeContentScreen extends StatelessWidget {
  const HomeContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List of spice image paths
    List<String> spiceImagePaths = [
      'assets/spice_0.jpg',
      'assets/spice_1.jpg',
      'assets/spice_2.jpg',
      'assets/spice_3.jpg',
      'assets/spice_4.jpg',
      'assets/spice_5.jpg',
    ];

    // List of spice names
    List<String> spiceNames = [
      'Cinnamon',
      'Turmeric',
      'Cloves',
      'Paprika',
      'Ginger',
      'Saffron',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Spice World',style: TextStyle(color: Colors.white),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: (){}, icon: const Icon(Icons.home)),
              title: const Text('Home'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              leading: IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
              title: const Text('Profile'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(),
            ListTile(
              leading: IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
              title: const Text('Settings'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              leading: IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
              title: const Text('Share and Earn'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            const Divider(),
            ListTile(
              leading: IconButton(onPressed: (){}, icon: const Icon(Icons.logout)),
              title: const Text('Logout'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Featured Spices',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/spice_0.jpg',
                    fit: BoxFit.cover,
                    height: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'Special Offer: Buy Now and Get 50% Off!',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Available Spices',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                spiceImagePaths.length,
                    (index) => Card(
                  elevation: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          spiceImagePaths[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          spiceNames[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

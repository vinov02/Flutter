import 'package:flutter/material.dart';
import 'package:sandhra/pages/farmers/login_page.dart';
import 'package:sandhra/pages/login_page.dart';
import 'package:sandhra/pages/signup_page.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey, // Background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Spice World',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40), // Space between title and buttons
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text('Login as Customer',style: TextStyle(color: Colors.black)),
              ),
            ),
            const SizedBox(height: 40), // Space between title and buttons
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPageFarmer()));
                },
                child: const Text('Login as Farmer',style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

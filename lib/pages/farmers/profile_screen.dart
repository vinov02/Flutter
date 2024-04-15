import 'package:flutter/material.dart';
import 'home_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Profile',style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileField('Name', 'John Doe'),
              _buildProfileField('Mobile', '+1234567890'),
              _buildProfileField('Email', 'johndoe@example.com'),
              _buildProfileField('Password', '********', isPassword: true),
              _buildProfileField('Address', '123 Street, City, Country'),
              SizedBox(
                  height: 40,
                  width: 320,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey
                      ),
                      onPressed: (){}, child: const Text('Update',style: TextStyle(color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileField(String label, String value, {bool isPassword = false}) {
    TextEditingController controller = TextEditingController(text: value);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        isPassword
            ? TextField(
          controller: controller,
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter your password',
          ),
        )
            : TextField(
          controller: controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'Enter your $label',
          ),
        ),
        const SizedBox(height: 12),
        const Divider(),
        const SizedBox(height: 12),
      ],
    );
  }
}


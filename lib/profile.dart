import 'package:flutter/material.dart';
import 'package:flutter_tm/template/navbar.dart'; 

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe8e8),
      appBar: AppBar(
        backgroundColor: Color(0xffffa09e),
        title: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Profil',
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/images2.jpg'),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person, color: Colors.blue),
                        title: Text('Rheno Julius'),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      ),
                      Divider(color: Colors.blue),
                      ListTile(
                        leading: Icon(Icons.email, color: Colors.blue),
                        title: Text('rheno@example.com'),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      ),
                      Divider(color: Colors.blue),
                      ListTile(
                        leading: Icon(Icons.phone, color: Colors.blue),
                        title: Text('+1234567890'),
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

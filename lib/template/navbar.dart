import 'package:flutter/material.dart';
import 'package:Sproutlings/homepage.dart';
import 'package:Sproutlings/profile.dart';
import 'package:Sproutlings/list_dokter.dart';
// import 'package:flutter_tm/list_konsultasi.dart';
import 'package:Sproutlings/menu.dart';

class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home, size: 24, color: Colors.black),
                  Text('Home', style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThreeCardsPage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.receipt, size: 24, color: Colors.black),
                  Text('Resep', style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListDokter()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.chat, size: 24, color: Colors.black),
                  Text('Konsultasi', style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person, size: 24, color: Colors.black),
                  Text('Profil', style: TextStyle(fontSize: 12, color: Colors.black)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

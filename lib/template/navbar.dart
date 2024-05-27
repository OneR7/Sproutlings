import 'package:flutter/material.dart';
import 'package:flutter_tm/homepage.dart';
import 'package:flutter_tm/profile.dart';
import 'package:flutter_tm/list_dokter.dart';
// import 'package:flutter_tm/list_konsultasi.dart';
import 'package:flutter_tm/menu.dart';


class CustomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.black),
                Text('Home', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThreeCardsPage()), // Correct navigation to ThreeCardsPage
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.receipt, color: Colors.black),
                Text('Resep', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListDokter()), // Pastikan ini mengarah ke ListDokter
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.chat, color: Colors.black),
                Text('Konsultasi', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, color: Colors.black),
                Text('Profil', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


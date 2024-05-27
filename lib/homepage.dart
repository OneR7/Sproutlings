import 'package:flutter/material.dart';
import 'package:flutter_tm/catatan_sikecil.dart';
import 'package:flutter_tm/gizi.dart';
import 'package:flutter_tm/template/navbar.dart';
import 'tumbuh_kembang.dart';
import 'menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe8e8),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    color: Color(0xffffa09e),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/boy.png',
                          height: 50, width: 50),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Rheno Julius',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 4),
                                Icon(Icons.drive_file_rename_outline_rounded,
                                    color: Colors.white, size: 16),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '0 Tahun 7 Bulan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Expanded(
                        child: SizedBox(height: 120),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 83),
                Center(
                  child: Image.asset('assets/images/tagline_homepage.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GiziAnak()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/gizi.png',
                                height: 70, width: 70),
                            const SizedBox(height: 5),
                            Text(
                              'Gizi',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Anak',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TumbuhKembangAnakPage()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/tumbuh.png',
                                height: 70, width: 70),
                            const SizedBox(height: 5),
                            Text(
                              'Tumbuh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Kembang',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CatatnSiKecilPage()),
                          );
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/jejak.png',
                                height: 70, width: 70),
                            const SizedBox(height: 5),
                            Text(
                              'Catatan',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Si Kecil',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Resep Sehat',
                        style: TextStyle(
                            color: Color(0xffffa09e),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThreeCardsPage()),
                          );
                        },
                        child: Text(
                          'Lihat semua',
                          style:
                              TextStyle(color: Color(0xffffa09e), fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: recipeCard('Nasi Tim Tahu Telur', '325 Kcal',
                              '30 Menit', context),
                        ),
                        SizedBox(width: 10),
                        recipeCard('Nasi Tim Ayam Sayur', '218 Kcal',
                            '15 Menit', context),
                        SizedBox(width: 10),
                        recipeCard('Nasi Tim Ayam Sayur', '218 Kcal',
                            '15 Menit', context),
                        SizedBox(width: 10),
                        recipeCard('Nasi Tim Ayam Sayur', '218 Kcal',
                            '15 Menit', context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 90,
              left: 16,
              right: 16,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.asset('assets/images/graph.png',
                              height: 34, width: 34),
                          const SizedBox(height: 2),
                          Text(
                            'Status Gizi',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Obesitas',
                            style: TextStyle(
                                color: Color(0xffffa09e),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '23 April 2024',
                            style: TextStyle(
                                color: Color(0xffC0C0C0),
                                fontSize: 11,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.asset('assets/images/graph.png',
                              height: 34, width: 34),
                          const SizedBox(height: 2),
                          Text(
                            'Perkembangan',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '5',
                                style: TextStyle(
                                    color: Color(0xffffa09e),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '/16',
                                style: TextStyle(
                                    color: Color(0xffC0C0C0), fontSize: 14),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '23 April 2024',
                            style: TextStyle(
                                color: Color(0xffC0C0C0),
                                fontSize: 11,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }

  Widget recipeCard(
      String recipeName, String calories, String time, BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/timtahutelur.png',
                height: 100, width: double.infinity, fit: BoxFit.cover),
          ),
          SizedBox(height: 8),
          Text(recipeName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Color(0xFFFFC3C2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('Makan siang',
                    style: TextStyle(color: Color(0xFFFF4848), fontSize: 8)),
              ),
              SizedBox(width: 4), // Adjust spacing as needed
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Color(0x6464D7CE),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('6-12 bulan',
                    style: TextStyle(color: Color(0xFF005A5C), fontSize: 8)),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Image.asset('assets/images/calories.png', height: 12),
              SizedBox(width: 4),
              Text(calories,
                  style: TextStyle(color: Color(0xFF97A2B0), fontSize: 11)),
              SizedBox(width: 4),
              Container(width: 1, height: 10, color: Color(0xFF97A2B0)),
              SizedBox(width: 4),
              Image.asset('assets/images/time.png', height: 12),
              SizedBox(width: 4),
              Text(time,
                  style: TextStyle(color: Color(0xFF97A2B0), fontSize: 11)),
            ],
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

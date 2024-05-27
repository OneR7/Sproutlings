import 'package:flutter/material.dart';
import 'package:flutter_tm/template/navbar.dart'; // Sesuaikan path jika berbeda
import 'menu0to6.dart'; 


class ThreeCardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.all(8.0),
          color: Color(0xFFFFA09E), 
          child: Text(
            'Menu Makanan Anak',
            style: TextStyle(color: Colors.white), 
          ),
        ),
        backgroundColor: Color(0xFFFFA09E), 
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Page3Card(
              icon: Icon(Icons.child_care),
              title: 'Untuk Bayi Umur 0 - 6 Bulan',
              subtitle: 'Air Susu Ibu (ASI) adalah satu-satunya makanan yang dibutuhkan bayi usia 0-3 bulan sampai setidaknya 6 bulan. Memberi makanan selain ASI pada bayi sebelum usia 6 bulan bisa berbahaya.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Page3Card(
              icon: Icon(Icons.child_care),
              title: 'Untuk Bayi Umur 6 - 12 Bulan',
              subtitle: 'Saat bayi memasuki usia 6 bulan, mereka akan memulai perjalanan makanan pendamping ASI (MPASI) pertama mereka, yang bisa menjadi momen menarik bagi para orang tua. Jadi, apa resep makanan terbaik yang sebaiknya diberikan kepada Si Kecil?',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Page3Card(
              icon: Icon(Icons.child_care),
              title: 'Untuk Bayi Umur 1 - 2 Tahun',
              subtitle: 'Ini adalah masa dimana banyak bayi mengalami malnutrisi. Maka penting untuk memberikan asupan dengan resep makanan balita 1-2 tahun yang mencukupi kebutuhan gizinya. Jadi, apa resep makanan terbaik yang sebaiknya diberikan kepada Si Kecil?',
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(), 
    );
  }
}

class Page3Card extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subtitle;

  const Page3Card({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, 
      elevation: 5,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(
              Icons.child_care, 
              size: 36, 
              color: Colors.black, 
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(
                title,
                style: TextStyle(color: Colors.black), 
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(color: Colors.black), 
              ),
              trailing: IconButton(
                icon: Icon(Icons.arrow_right),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Menu0to6()), 
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

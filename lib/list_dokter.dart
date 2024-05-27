import 'package:flutter/material.dart';
// import 'list_konsultasi.dart';
import 'template/navbar.dart'; // Import the CustomNavBar
import 'chat.dart'; // Import the ChatPage

class ListDokter extends StatefulWidget {
  const ListDokter({Key? key}) : super(key: key);

  @override
  _ListDokterState createState() => _ListDokterState();
}

class _ListDokterState extends State<ListDokter> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe8e8),
      body: ListView(
        children: [
          buildTopSection(context),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                buildCourseSection(context),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(), // Use the CustomNavBar
    );
  }

  Widget buildTopSection(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: const BoxDecoration(
      color: Color(0xffffa09e),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Cari dokter terpercara anda",
              hintStyle: TextStyle(color: Colors.black54),
              prefixIcon: Icon(Icons.search, size: 25),
            ),
          ),
        ),
        const SizedBox(height: 10), 
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xfffbb6b4),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rekomendasi Dokter",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Konsultasikan perkembangan anak dengan dokter terpercaya anda",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff7d5b5a),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListDokter()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.red), // Pinggiran berwarna merah
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      "Lihat Semua",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    ),
  );
}


  
  Widget buildCourseSection(BuildContext context) {
  // List data untuk dokter, umur, angka persen, harga, dan gambar dokter
  List<String> doctorNames = ["Dr. John Doe", "Dr. Jane Smith", "Dr. Michael Brown", "Dr. Ac"];
  List<int> ages = [35, 42, 38, 20];
  List<int> likePercentages = [85, 92, 78, 90];
  List<int> prices = [200000, 250000, 180000, 134000];
  List<String> doctorImages = ["assets/images/doctor1.png", "assets/images/doctor2.png", "assets/images/doctor3.png", "assets/images/doctor4.png"];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListView.builder(
        itemCount: doctorNames.length, // Menggunakan panjang dari salah satu list sebagai itemCount
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: const EdgeInsets.only(bottom: 15), // Menambahkan margin kiri
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2), // Menambahkan padding di atas dan di bawah gambar
                      child: Image.asset(
                        doctorImages[index], // Gambar dokter
                        width: 100,
                        height: 100, // Mengurangi tinggi gambar agar padding di atas dan di bawahnya lebih jelas
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            doctorNames[index], // Nama dokter
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                          ),// Jarak antar paragraf
                          Text(
                            "Spesialis Gizi", // Spesialisasi dokter
                            style: TextStyle(fontSize: 11, color: Color(0xff7f7f7f)),
                          ),
                          const SizedBox(height: 8), // Jarak antar paragraf sedang
                          Row(
                            children: [
                              Icon(Icons.local_hospital, size: 15,), // Icon hospital
                              SizedBox(width: 2),
                              Text(
                                "${ages[index]} tahun", // Umur dokter
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 10),
                              Icon(Icons.thumb_up, size: 15), // Icon like
                              SizedBox(width: 2),
                              Text(
                                "${likePercentages[index]}%", // Persentase like
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15), // Jarak cukup jauh
                          Text(
                            "Rp ${prices[index]}", // Harga
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 10), // Menambahkan margin kanan
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 6),
                      child: Text(
                        "Chat",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ],
  );
}
}


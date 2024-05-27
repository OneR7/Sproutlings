import 'package:flutter/material.dart';
import 'list_dokter.dart';

class ListKonsultasi extends StatefulWidget {
  const ListKonsultasi({Key? key}) : super(key: key);

  @override
  _ListKonsultasiState createState() => _ListKonsultasiState();
}

class _ListKonsultasiState extends State<ListKonsultasi> {
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
                hintText: "Cari pasien anda",
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
                        "Daftar Konsultan",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Hai, semangat untuk membantu bunda-bunda disini ya!",
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
                      border: Border.all(color: Colors.red),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
    List<String> patientNames = [
      "Lailatul Eky Fitriyaningsih",
      "Restanti Mayzaluna",
      "Rheno Julius Andreas"
    ];
    List<String> days = ["Senin", "Selasa", "Rabu"];
    List<String> times = ["08.30 - 10.30", "09.00 - 11.00", "10.30 - 12.30"];
    List<String> patientImages = ["anak1.png", "anak2.png", "anak3.png"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          itemCount: patientNames.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                margin: const EdgeInsets.only(bottom: 15),
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
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Image.asset(
                          patientImages[index],
                          width: 100,
                          height: 100,
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
                              patientNames[index], // Nama pasien
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              days[index], // Hari
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff7f7f7f)),
                            ),
                            Text(
                              times[index], // Jam
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff7f7f7f)),
                            ),
                            const SizedBox(height: 15), 
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 10), 
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 4),
                              child: Text(
                                "Chat",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                          ],
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

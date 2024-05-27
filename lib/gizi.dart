import 'package:flutter/material.dart';
import 'data_anak.dart';

class GiziAnak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffbe8e8),
      body: SingleChildScrollView(
        child: Column(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Gizi Anak',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.0,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rheno Julius',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '0 Tahun 7 Bulan',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const Divider(color: Colors.black),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terakhir diupdate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        '20 April 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  customBox('assets/images/berat.png', 'Berat', 'Berat anakmu ideal', 'Tetap penuhi nutrisinya agar tetap ideal', 'Rekomendasi Makanan', ['Tim Tahu Telur', 'Tim Sayur', 'Bubur Ayam Jagung', 'Cheese Scramble Eggs']),
                  const SizedBox(height: 10),
                  customBox('assets/images/tinggi.png', 'Tinggi', 'Tinggi anakmu normal bawah', 'Tingkatkan kebutuhan nutrisinya agar tingginya menjadi ideal', 'Rekomendasi Makanan', ['Tim Tahu Telur', 'Tim Sayur', 'Bubur Ayam Jagung', 'Cheese Scramble Eggs']),
                  const SizedBox(height: 10),
                  customBox('assets/images/kepala.png', 'L.Kepala', 'Lingkar kepala anakmu ideal', 'Tetap penuhi nutrisinya agar lingkar kepala tetap ideal', 'Rekomendasi Makanan', ['Tim Tahu Telur', 'Tim Sayur', 'Bubur Ayam Jagung', 'Cheese Scramble Eggs']),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateChildGrowthPage()),
              );
            },
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffffa09e),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Data Pertumbuhan Baru',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget customBox(String imagePath, String title, String topText, String bottomText, String dropdownText, List<String> dropdownItems) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(imagePath, height: 34, width: 34),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            topText,
            style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            bottomText,
            style: TextStyle(color: Colors.black, fontSize: 13),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(child: Text(dropdownText)),
                  ],
                  onChanged: (value) {},
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey)),
            ),
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: dropdownItems.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Icon(Icons.circle, size: 6, color: Colors.black),
                    const SizedBox(width: 6),
                    Text(item, style: TextStyle(fontSize: 13)),
                  ],
                ),
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

void main() => runApp(MaterialApp(
  home: GiziAnak(),
));

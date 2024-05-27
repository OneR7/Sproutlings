import 'package:flutter/material.dart';

class TumbuhKembangAnakPage extends StatefulWidget {
  @override
  _TumbuhKembangAnakPageState createState() => _TumbuhKembangAnakPageState();
}

class _TumbuhKembangAnakPageState extends State<TumbuhKembangAnakPage> {
  Map<String, bool> checkedItems = {};
  String dropdownValue = 'Usia 0-3 bulan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffffa09e),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Tumbuh Kembang Anak',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Image.asset(
                'assets/images/tagline_tumbuhkembang.png',
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0), 
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xffffa09e)),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButtonHideUnderline( 
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  isExpanded: true,
                  iconSize: 24, 
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'Usia 0-3 bulan',
                    'Usia 4-6 bulan',
                    'Usia 7-10 bulan'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),

            const SizedBox(height: 20),
            _buildGrowthBox(
              title: 'Pada umur 1 bulan, bayi bisa:',
              image: 'assets/images/boy.png',
              progress: '0/4 perkembangan',
              items: [
                'Menatap ke ibu',
                'Mengeluarkan suara o...o...',
                'Tersenyum',
                'Menggerakkan tangan dan kaki',
              ],
            ),
            const SizedBox(height: 20),
            _buildGrowthBox(
              title: 'Pada umur 3 bulan, bayi bisa:',
              image: 'assets/images/boy.png',
              progress: '0/5 perkembangan',
              items: [
                'Tertawa',
                'Mengangkat kepala tegak ketika tengkurap',
                'Menggerakkan kepala ke kiri dan kanan',
                'Membalas tersenyum ketika diajak bicara',
                'Mengoceh atau bereaksi spontan',
              ],
            ),
            const SizedBox(height: 20),
            Container(
              color: Color(0xffffa09e),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CATATAN',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),  
                  ),
                  const SizedBox(height: 10),
                  _buildBulletPoint(
                    'Jika orang tua merasa perkembangan anak berjalan sangat lambat, coba konsultasi dengan spesialis pada fitur konsultasi',
                  ),
                  const SizedBox(height: 10),
                  _buildBulletPoint(
                    'Jika pada usia 3 bulan, bayi belum bisa melakukan minimal salah satu hal di atas, bawa bayi ke dokter/bidan/perawat',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGrowthBox({required String title, required String image, required String progress, required List<String> items}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffA2A2A2)),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(image, height: 40, width: 40),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: progress.split(' ')[0],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: ' ${progress.split(' ')[1]}'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ...items.map((item) => _buildChecklistItem(item)).toList(),
        ],
      ),
    );
  }

  Widget _buildChecklistItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Checkbox(
            value: checkedItems[text] ?? false,
            onChanged: (bool? newValue) {
              setState(() {
                checkedItems[text] = newValue!;
              });
            },
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 13),  
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          width: 5,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 13), 
          ),
        ),
      ],
    );
  }
}

void main() => runApp(MaterialApp(
  home: TumbuhKembangAnakPage(),
));

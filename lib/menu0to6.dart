import 'package:flutter/material.dart';
import 'package:flutter_tm/model/resep.dart';
import 'package:flutter_tm/model/resep_api.dart';
import 'package:flutter_tm/widget/resep_card.dart';

class Menu0to6 extends StatefulWidget {
  @override
  State<Menu0to6> createState() => _Menu0to6State();
}

class _Menu0to6State extends State<Menu0to6> {
  late Future<List<Resep>> _futureResep;

  @override
  void initState() {
    super.initState();
    _futureResep = ResepApi.getResep();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              color: Colors.white,
            ),
            Text(
              "Resep Makanan",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFA09E),
      ),
      body: FutureBuilder<List<Resep>>(
        future: _futureResep,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (snapshot.hasData) {
            final resepList = snapshot.data!;
            return ListView.builder(
              itemCount: resepList.length,
              itemBuilder: (context, index) {
                return ResepCard(
                  title: resepList[index].name,
                  cookTime: resepList[index].totalTime,
                  rating: resepList[index].rating,
                  thumbnailUrl: resepList[index].images,
                );
              },
            );
          } else {
            return Center(child: Text("Tidak ada data"));
          }
        },
      ),
    );
  }
}

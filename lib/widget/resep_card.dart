import 'package:flutter/material.dart';

class ResepCard extends StatelessWidget {
  final String title;
  final double rating;
  final String cookTime;
  final String thumbnailUrl;

  ResepCard({
    required this.title,
    required this.rating,
    required this.cookTime,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 220, // Sesuaikan tinggi keseluruhan
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 16.0, bottom: 10.0), // Sesuaikan margin untuk tata letak yang rapi
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
            child: Image.network(
              thumbnailUrl,
              height: 120, // Tinggi gambar diperpanjang
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 195, 194, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Makan siang',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 72, 72, 1),
                    fontSize: 8,
                  ),
                ),
              ),
              SizedBox(width: 4), // Sesuaikan jarak antar elemen sesuai kebutuhan
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(100, 100, 220, 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '6-12 bulan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Image.asset('assets/images/calories.png', height: 12),
              SizedBox(width: 4),
              Text(
                rating.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
              ),
              SizedBox(width: 4),
              Container(width: 1, height: 10, color: Color.fromRGBO(151, 162, 176, 1)),
              SizedBox(width: 4),
              Image.asset('assets/images/time.png', height: 12),
              SizedBox(width: 4),
              Text(
                cookTime,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

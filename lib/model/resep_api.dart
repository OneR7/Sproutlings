import 'dart:convert';
import 'package:Sproutlings/model/resep.dart';
import 'package:http/http.dart' as http;

class ResepApi {

  static Future<List<Resep>> getResep() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', "/feeds/list", {"limit": '24', "start": '0'});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '551359bf1bmshfbfd347087f1869p16b702jsn3feb88374d4d',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }
    return Resep.resepFromSnapshot(_temp);
  }
}

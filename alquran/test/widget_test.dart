import 'dart:convert';
import 'package:alquran/app/data/models/ayat.dart';
import "package:http/http.dart" as http;

void main() async {
  var res =
      await http.get(Uri.parse("https://api.quran.gading.dev/surah/18/1"));
  Map<String, dynamic> data = json.decode(res.body)['data'];
  Map<String, dynamic> datatoModel = {
    "number": data['number'],
    "meta": data['meta'],
    "text": data['text'],
    "translation": data['translation'],
    "audio": data['audio'],
    "tafsir": data['tafsir'],
  };

  // convert mapping to model ayat
  Ayat ayat = Ayat.fromJson(datatoModel);
  print(ayat.tafsir.id.short);
}

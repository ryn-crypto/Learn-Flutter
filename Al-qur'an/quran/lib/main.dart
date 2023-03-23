import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quran/data/models/detail_surah.dart';
import 'package:quran/data/models/surah.dart';

void main() async {
  Uri url = Uri.parse("https://api.quran.gading.dev/surah");
  var res = await http.get(url);

  List data = (json.decode(res.body) as Map<String, dynamic>)['data'];

  // raw data dirubah ke bantuk model
  Surah surahAnnas = Surah.fromJson(data[113]);

  Uri urlAnnas =
      Uri.parse("https://api.quran.gading.dev/surah/${surahAnnas.number}");
  var resAnnas = await http.get(urlAnnas);

  Map<String, dynamic> dataAnnas =
      (json.decode(resAnnas.body) as Map<String, dynamic>)['data'];
  DetailSurah annas = DetailSurah.fromJson(dataAnnas);

  print(annas.verses[0].text.arab);
}

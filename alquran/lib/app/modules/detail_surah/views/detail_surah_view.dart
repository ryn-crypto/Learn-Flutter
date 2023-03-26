import 'package:alquran/app/data/models/detail_surah.dart' as detail;
import 'package:alquran/app/data/models/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/detail_surah_controller.dart';

class DetailSurahView extends GetView<DetailSurahController> {
  DetailSurahView({Key? key}) : super(key: key);

  final Surah surah = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Surah ${surah.name.transliteration.id}'.toUpperCase()),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Surah ${surah.name.transliteration.id}'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '( ${surah.name.translation.id} )'.toUpperCase(),
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '${surah.numberOfVerses} ayat | ${surah.revelation.id}',
                      style: const TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            FutureBuilder<detail.DetailSurah>(
                future: controller.getDetailSurah(surah.number.toString()),
                builder: (context, snapshot) {
                  print(snapshot.data);
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (!snapshot.hasData) {
                    return const Center(
                      child: Text("Tidak ada data."),
                    );
                  }
                  return Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: snapshot.data?.verses.length ?? 0,
                        itemBuilder: (context, index) {
                          if (snapshot.data?.verses.length == 0) {
                            return const Center(
                              child: SizedBox(),
                            );
                          }
                          detail.Verse? ayat = snapshot.data?.verses[index];
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CircleAvatar(
                                          child: Text("${index + 1}"),
                                        ),
                                        Row(children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                  Icons.bookmark_add_outlined)),
                                          IconButton(
                                              onPressed: () {},
                                              icon:
                                                  const Icon(Icons.play_arrow))
                                        ]),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "${ayat?.text.arab}",
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(fontSize: 25),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "${ayat?.translation.en}",
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontStyle: FontStyle.italic),
                                ),
                                const SizedBox(height: 25),
                                Text(
                                  "${ayat?.translation.id}",
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(fontSize: 18),
                                ),
                                const SizedBox(height: 50)
                              ]);
                        }),
                  );
                })
          ],
        ));
  }
}

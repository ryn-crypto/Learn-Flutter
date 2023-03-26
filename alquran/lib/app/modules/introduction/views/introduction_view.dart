import 'package:alquran/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/introduction_controller.dart';
import 'package:lottie/lottie.dart';

class IntroductionView extends GetView<IntroductionController> {
  const IntroductionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Al-Quran Apps",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Sesungguhnya Al-Qur'an adalah petunjuk",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Develop with Riyan",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 20),
          SizedBox(
              width: 300,
              height: 300,
              child: Lottie.asset('assets/lotties/animate_quran.json')),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: const Text("Mulai Membaca"))
        ],
      ),
    ));
  }
}

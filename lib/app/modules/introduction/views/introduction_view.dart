import 'package:chat_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Berinteraksi dengan mudah",
            body: "Kamu hanya perlu dirumah aja untuk mendapatkan teman baru.",
            image: Center(
              child: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Lottie.asset('assets/lottie/main-laptop-duduk.json'),
              ),
            ),
          ),
          PageViewModel(
            title: "Temukan sahabat baru",
            body:
                "Jika kamu dapat jodoh dari aplikasi ini, kami sangat bahagia.",
            image: Center(
              child: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Lottie.asset('assets/lottie/ojek.json'),
              ),
            ),
          ),
          PageViewModel(
            title: "Aplikasi bebas biaya",
            body: "Kamu tidak perlu khawatir, aplikasi ini bebas biaya apapun.",
            image: Center(
              child: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Lottie.asset('assets/lottie/payment.json'),
              ),
            ),
          ),
          PageViewModel(
            title: "Gabung sekarang juga",
            body:
                "Daftarkan diri kamu untuk menjadi bagian dari kami. Kami akan hubungkan Anda dengan 1000+ teman lainnya",
            image: Center(
              child: SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Lottie.asset('assets/lottie/register.json'),
              ),
            ),
          ),
        ],
        onDone: () => Get.offAllNamed(Routes.LOGIN),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        next: const Text(
          'Next',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        done: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

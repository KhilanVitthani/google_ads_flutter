import 'package:app_open_ads/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.myBanner.load();
    final AdWidget adWidget = AdWidget(ad: controller.myBanner);
    final Container adContainer = Container(
      alignment: Alignment.center,
      width: controller.myBanner.size.width.toDouble(),
      height: controller.myBanner.size.height.toDouble(),
      child: adWidget, // myBanner.size.height.toDouble(),
    );
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (logic) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('HomeView'),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Spacer(),
                Center(
                  child: InkWell(
                    onTap: () {
                      if (controller.isInterstitialLoaded.value) {
                        controller.interstitialAd!
                            .show()
                            .then((value) => Get.toNamed(Routes.SECOND));
                      }
                    },
                    child: Text(
                      'HomeView is working',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Spacer(),
                adContainer,
              ],
            ),
          );
        });
  }
}

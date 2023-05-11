import 'package:app_open_ads/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetWidget<SecondController> {
  const SecondView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SecondView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

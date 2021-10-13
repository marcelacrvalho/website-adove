import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/home/widgets/background.dart';
import 'package:adove/modules/home/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const MenuWidget(),
              const Divider(),
              Stack(
                children: [
                  const BackgroundWidgetHome(path: 'assets/images/bg.jpg'),
                  Positioned(
                    left: Get.mediaQuery.size.width * 0.2,
                    top: Get.mediaQuery.size.height * 0.4,
                    right: Get.mediaQuery.size.width * 0.2,
                    bottom: Get.mediaQuery.size.height * 0.4,
                    child: const TitleWidgetHome(title: 'adove'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

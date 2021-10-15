import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowAppInformationWidget extends StatelessWidget {
  const RowAppInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: HomeController.to.isMobile
          ? Get.mediaQuery.size.width
          : Get.mediaQuery.size.width * 0.4,
      height: Get.mediaQuery.size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: _iconText(
              Icon(
                Icons.visibility,
                size: HomeController.to.isMobile
                    ? Get.mediaQuery.size.width * 0.1
                    : Get.mediaQuery.size.width * 0.03,
                color: Colors.grey,
              ),
              'Mais visibilidade ao seu negócio',
            ),
          ),
          Flexible(
            child: _iconText(
              Icon(
                Icons.event,
                size: HomeController.to.isMobile
                    ? Get.mediaQuery.size.width * 0.1
                    : Get.mediaQuery.size.width * 0.03,
                color: Colors.grey,
              ),
              'Agendamento rápido e fácil ',
            ),
          ),
          Flexible(
            child: _iconText(
              Icon(
                Icons.article,
                size: HomeController.to.isMobile
                    ? Get.mediaQuery.size.width * 0.1
                    : Get.mediaQuery.size.width * 0.03,
                color: Colors.grey,
              ),
              'Novidades em tempo real',
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconText(Icon icon, String text) {
    return SizedBox(
      height: Get.mediaQuery.size.height * 0.3,
      width: HomeController.to.isMobile
          ? Get.mediaQuery.size.width
          : Get.mediaQuery.size.height * 0.4,
      child: Column(
        children: [
          SizedBox(
            height: Get.mediaQuery.size.height * 0.07,
            child: Center(child: icon),),
          SizedBox(
            height: Get.mediaQuery.size.height * 0.2,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextWidget(
                  text: text,
                  isTextAlignCenter: true,
                  textSize: HomeController.to.isMobile
                      ? Sizes.h1Mobile - 4
                      : Sizes.h1Site,
                  fontFamily: 'Made',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

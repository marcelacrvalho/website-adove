import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowPaymentInformationWidget extends StatelessWidget {
  const RowPaymentInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.mediaQuery.size.height * 0.4,
      width: Get.mediaQuery.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextWidget(
                      text: 'Apenas',
                      isTextAlignCenter: true,
                      textSize: HomeController.to.isMobile
                          ? Sizes.body1Mobile
                          : Sizes.body1Site,
                    ),
                    Container(
                      color: Colors.white,
                      width: HomeController.to.isMobile
                          ? Get.mediaQuery.size.width * 0.3
                          : Get.mediaQuery.size.width * 0.12,
                      height: Get.mediaQuery.size.height * 0.07,
                      padding: const EdgeInsets.all(4.0),
                      child: const TextWidget(
                        text: 'R\$ 27, 00',
                        isTextAlignCenter: true,
                        textSize: 25.0,
                        fontFamily: 'Made',
                        //color: Colors.white,
                        alignmentDirection: Alignment.center,
                      ),
                    ),
                    TextWidget(
                      text: 'Mensais',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body1Mobile
                          : Sizes.body1Site,
                      isTextAlignCenter: true,
                    ),
                    const Divider(),
                    TextWidget(
                      text: 'Sem taxa de adesão',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body2Mobile
                          : Sizes.body2Site,
                      isTextAlignCenter: true,
                    ),
                    TextWidget(
                      text: 'Sem burocracia',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body2Mobile
                          : Sizes.body2Site,
                      isTextAlignCenter: true,
                    ),
                    TextWidget(
                      text: 'Cancele quando quiser',
                      textSize: HomeController.to.isMobile
                          ? Sizes.body2Mobile
                          : Sizes.body2Site,
                      isTextAlignCenter: true,
                    ),
                  ],
                ),
                Flexible(
                  child: Container(
                    color: Colors.deepPurple[400],
                    padding: const EdgeInsets.only(right: 8.0),
                    width: Get.mediaQuery.size.width * 0.5,
                    height: HomeController.to.isMobile
                        ? Get.mediaQuery.size.height * 0.2
                        : Get.mediaQuery.size.height * 0.2,
                    child: TextWidget(
                      text: 'adove\nadove\nadove',
                      fontFamily: 'Made',
                      color: Get.theme.scaffoldBackgroundColor,
                      textSize: HomeController.to.isMobile
                          ? Sizes.h1Mobile
                          : Sizes.h1Site,
                      alignmentDirection: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Get.mediaQuery.size.height * 0.08,
            width: Get.mediaQuery.size.width,
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                TextWidget(
                  text: 'Fedra Tecnologia',
                  textSize: HomeController.to.isMobile
                      ? Sizes.body2Mobile - 2
                      : Sizes.body1Site - 2,
                  isTextAlignCenter: true,
                  alignmentDirection: Alignment.center,
                ),
                TextWidget(
                  text: 'Benjamin Constant, 116. Varginha, Minas Gerais. Brasil',
                  textSize: HomeController.to.isMobile
                      ? Sizes.body2Mobile - 2
                      : Sizes.body1Site - 2,
                  isTextAlignCenter: true,
                  alignmentDirection: Alignment.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

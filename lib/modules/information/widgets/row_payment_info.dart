import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowPaymentInformationWidget extends StatelessWidget {
  const RowPaymentInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: Get.mediaQuery.size.height * 0.6,
        color: webThemeData.scaffoldBackgroundColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: Get.mediaQuery.size.width * 0.2,
                      child: const TextWidget(
                        text: 'E quanto eu tenho que pagar?',
                        textSize: kTitle,
                        isTextAlignCenter: true,
                        alignmentDirection: Alignment.center,
                        fontFamily: 'Made',
                      ),
                    ),
                    const Divider(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: Get.mediaQuery.size.width * 0.2,
                          child: const TextWidget(
                            text: 'Apenas',
                            textSize: kText,
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                          ),
                        ),
                        Container(
                          color: const Color(0XFFF1948A),
                          width: Get.mediaQuery.size.width * 0.12,
                          child: TextWidget(
                            text: 'R\$ 27, 00',
                            textSize: kTitle,
                            isTextAlignCenter: true,
                            alignmentDirection: Alignment.center,
                            fontFamily: 'Made',
                            color: webThemeData.scaffoldBackgroundColor,
                          ),
                        ),
                        const TextWidget(
                          text: 'Mensais',
                          textSize: kText,
                          isTextAlignCenter: true,
                          alignmentDirection: Alignment.center,
                        ),
                        const Divider(),
                        const TextWidget(
                          text: 'Sem taxa de adesão',
                          textSize: kText - 2,
                          isTextAlignCenter: true,
                          alignmentDirection: Alignment.center,
                        ),
                        const TextWidget(
                          text: 'Sem burocracia',
                          textSize: kText - 2,
                          isTextAlignCenter: true,
                          alignmentDirection: Alignment.center,
                        ),
                        const TextWidget(
                          text: 'Cancele quando quiser',
                          textSize: kText - 2,
                          isTextAlignCenter: true,
                          alignmentDirection: Alignment.center,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: Get.mediaQuery.size.height * 0.6,
                    maxWidth: Get.mediaQuery.size.width * 0.6,
                    minHeight: Get.mediaQuery.size.height * 0.4,
                    minWidth: Get.mediaQuery.size.width * 0.4,
                  ),
                  width: Get.mediaQuery.size.width * 0.6,
                  height: Get.mediaQuery.size.height * 0.6,
                  child: Image.asset('assets/images/bg-info-notice.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

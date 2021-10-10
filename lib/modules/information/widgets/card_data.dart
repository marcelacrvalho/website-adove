import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardDataWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const CardDataWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.mediaQuery.size.width * 0.2,
      height: Get.mediaQuery.size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWidget(
            text: title,
            textSize: kTitle,
            isTextAlignCenter: true,
            alignmentDirection: Alignment.center,
            fontFamily: 'Made',
          ),
          Center(
            child: TextWidget(
              text: subtitle,
              textSize: kText,
              alignmentDirection: Alignment.center,
              isTextAlignCenter: true,
            ),
          ),
        ],
      ),
    );
  }
}

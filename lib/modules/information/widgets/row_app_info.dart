import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowAppInformationWidget extends StatelessWidget {
  const RowAppInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: Get.mediaQuery.size.height * 0.6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconText(
              Icon(
                Icons.visibility,
                size: Get.mediaQuery.size.width * 0.03,
                color: Colors.grey,
              ),
              'Mais visibilidade ao seu negócio',
            ),
            _iconText(
              Icon(
                Icons.event,
                size: Get.mediaQuery.size.width * 0.03,
                color: Colors.grey,
              ),
              'Agendamento rápido e fácil ',
            ),
            _iconText(
              Icon(
                Icons.article,
                size: Get.mediaQuery.size.width * 0.03,
                color: Colors.grey,
              ),
              'Novidades em tempo real',
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconText(Icon icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          width: Get.mediaQuery.size.width * 0.2,
          child: TextWidget(
            text: text,
            textSize: 30.0,
            fontFamily: 'Made',
            isTextAlignCenter: true,
            alignmentDirection: Alignment.center,
          ),
        ),
      ],
    );
  }
}

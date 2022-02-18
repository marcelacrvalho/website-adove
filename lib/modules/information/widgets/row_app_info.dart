import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowAppInformationWidget extends StatelessWidget {
  const RowAppInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _iconSize = HomeController.to.isMobile
        ? Get.mediaQuery.size.width * 0.1
        : Get.mediaQuery.size.width * 0.03;

    return SizedBox(
      height: Get.mediaQuery.size.height * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: _iconText(
              Icon(
                Icons.visibility,
                size: _iconSize,
                color: Colors.grey,
              ),
              'Maior visibilidade para o seu negócio',
            ),
          ),
          Expanded(
            child: _iconText(
              Icon(
                Icons.event,
                size: _iconSize,
                color: Colors.grey,
              ),
              'Agendamento rápido e fácil, sem estresse',
            ),
          ),
          Expanded(
            child: _iconText(
              Icon(
                Icons.addchart_outlined,
                size: _iconSize,
                color: Colors.grey,
              ),
              'Redução de faltas e atrasos dos clientes',
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconText(Icon icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: icon),
        Center(
          child: TextWidget(
            text: text,
            isTextAlignCenter: true,
            textSize: HomeController.to.isMobile
                ? Sizes.h1Mobile - 4
                : Sizes.h1Site - 2,
            fontFamily: 'Made',
          ),
        ),
      ],
    );
  }
}

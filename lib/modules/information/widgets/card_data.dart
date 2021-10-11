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
      width: Get.mediaQuery.size.width * 0.25,
      height: Get.mediaQuery.size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

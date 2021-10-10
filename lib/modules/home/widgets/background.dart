import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundWidgetHome extends StatelessWidget {
  final String path;

  const BackgroundWidgetHome({Key? key, 
    required this.path,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: Get.mediaQuery.size.height * 1.0,
      ),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
        width: double.infinity,
        height: Get.mediaQuery.size.height * 1.1,
      ),
    );
  }
}

import 'package:adove/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final IconData ? icon;
  final void Function()? onTap;

  const FloatingActionButtonWidget({
    Key? key, 
    required this.onTap,
    this.icon = Icons.arrow_right_alt_rounded,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onTap,
      backgroundColor: webThemeData.primaryColor,
      label: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          icon,
          size: Get.mediaQuery.size.width * 0.02,
          color: webThemeData.scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
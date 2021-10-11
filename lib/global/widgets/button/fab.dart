import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    return SizedBox(
      width: 0.05.sw,
      height: 0.07.sh,
      child: FloatingActionButton.extended(
        onPressed: onTap,
        backgroundColor: Theme.of(context).primaryColor,
        label: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            icon,
            size: 0.022.sw,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
    );
  }
}
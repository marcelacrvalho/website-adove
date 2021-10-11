import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonElevatedWidget extends StatelessWidget {
  final void Function()? onTapButton;
  final String buttonText;

  const ButtonElevatedWidget({
    Key? key,
    required this.onTapButton,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.08.sw,
      height: 0.08.sh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ElevatedButton(
        onPressed: onTapButton,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          padding: const EdgeInsets.all(4.0),
        ),
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: Theme.of(context).textTheme.headline3!.fontSize,
          )
        ),
      ),
    );
  }
}

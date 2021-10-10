import 'package:adove/global/utilities/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    return ElevatedButton(
      onPressed: onTapButton,
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: const EdgeInsets.all(4.0),
      ),
      child: Text(
        buttonText.toUpperCase(),
        style: const TextStyle(fontSize: kTextSmall),
      ),
    );
  }
}

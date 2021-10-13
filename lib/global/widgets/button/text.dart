import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final void Function()? onTapButton;
  final String textButton;

  const TextButtonWidget({
    Key? key,
    required this.onTapButton,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTapButton,
      child: AutoSizeText(
        textButton,
        maxLines: 1,
        minFontSize: 5.0,
        stepGranularity: 1,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 15.0,
        ),
      ),
    );
  }
}

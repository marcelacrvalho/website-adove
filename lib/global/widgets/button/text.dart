import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final void Function()? onTapButton;
  final String textButton;

  const TextButtonWidget({
    Key? key, 
    required this.onTapButton,
    required this.textButton,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTapButton,
        child: Text(
          textButton,
          style: Theme.of(context).textTheme.button,
        ),
    );
  }
}

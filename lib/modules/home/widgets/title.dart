import 'package:flutter/material.dart';

class TitleWidgetHome extends StatelessWidget {
  final String title;

  const TitleWidgetHome({
    Key? key, 
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: 100.0,
            fontFamily: 'Made'
          ),
        ),
      ],
    );
  }
}

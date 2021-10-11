import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAvatarWidget extends StatelessWidget {
  final String path;

  const ImageAvatarWidget({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 0.15.sw,
        maxHeight: 0.15.sh,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(path),
        ),
      ),
    );
  }
}

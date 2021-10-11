import 'package:adove/global/widgets/button/text.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 0.12.sh,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(0.4.sw),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: const Offset(0, -2),
              blurRadius: 30.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButtonWidget(
            onTapButton: () => Get.toNamed(Routes.kHome),
            textButton: 'INÍCIO',
          ),
          TextButtonWidget(
            onTapButton: () => Get.toNamed(Routes.kAbout),
            textButton: 'INFORMAÇÕES',
          ),
          TextButtonWidget(
            onTapButton: () => Get.toNamed(Routes.kRegister),
            textButton: 'CADASTRAR',
          ),
          TextButtonWidget(
            onTapButton: () => Get.toNamed(Routes.kContact),
            textButton: 'CONTATO',
          ),
        ],
      ),
    );
  }
}

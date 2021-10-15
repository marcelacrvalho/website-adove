import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/button/text.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: Get.mediaQuery.size.width,
          height:Get.mediaQuery.size.height * 0.12,
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(40.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                offset: const Offset(0, -2),
                blurRadius: 30.0,
              ),
            ],
          ),
          child: !Sizes.isMobile()
          ? Row(
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
          )
          : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
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
          ),
        );
  }
}

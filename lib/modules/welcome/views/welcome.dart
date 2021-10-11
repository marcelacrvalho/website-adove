import 'package:adove/modules/welcome/controllers/welcome.dart';
import 'package:adove/modules/welcome/widgets/container_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeView extends StatelessWidget {
  final controller = Get.put<WelcomeController>(WelcomeController());

  WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            width: 0.5.sw,
            height: 1.sh,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 0.04.sh,
                    color: Colors.white,
                  ),
                ),
                const Divider(),
                ContainerMessageWidget(text: controller.welcomeText),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

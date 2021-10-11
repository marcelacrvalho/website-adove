import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/elevated.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterStoreView extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  RegisterStoreView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MenuWidget(),
              const Divider(),
              Container(
                alignment: Alignment.center,
                width: 0.3.sw,
                height: 1.sh,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ImageAvatarWidget(
                      path: 'assets/images/avatar-register.jpg',
                    ),
                    const Divider(),
                    Text(
                      'Até que enfim',
                      style: Theme.of(Get.context!).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Última pergunta',
                      style: Theme.of(Get.context!).textTheme.headline3,
                    ),
                    const Divider(),
                    FormFieldWidget(
                      controller: controller.nameController,
                      labelText: 'Qual é o nome da sua empresa?',
                    ),
                    const Divider(),
                    ButtonElevatedWidget(
                      onTapButton: () => controller.registerStore(),
                      buttonText: 'Acabei',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

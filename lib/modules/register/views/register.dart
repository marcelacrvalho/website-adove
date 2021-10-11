import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/elevated.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterView extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  RegisterView({Key? key}) : super(key: key);

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
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 0.3.sw,
                  height: 1.sh,
                  child: Padding(
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
                          'Quem não é visto, não é lembrado',
                          style: Theme.of(Get.context!).textTheme.headline2,
                        ),
                        Text(
                          'Permita ser encontrado por milhares de clientes no Brasil',
                          style: Theme.of(Get.context!).textTheme.headline3,
                        ),
                        const Divider(),
                        FormFieldWidget(
                          controller: controller.emailController,
                          labelText: 'Coloque um e-mail que você tenha acesso',
                        ),
                        const Divider(),
                        FormFieldWidget(
                          controller: controller.passwordController,
                          labelText: 'Agora, escolha uma senha',
                          obscureText: true,
                        ),
                        const Divider(),
                        ButtonElevatedWidget(
                          onTapButton: () => Get.toNamed(Routes.kNotice),
                          buttonText: 'Pronto',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

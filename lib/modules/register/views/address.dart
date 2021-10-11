import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterAddress extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  RegisterAddress({Key? key}) : super(key: key);

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
            mainAxisSize: MainAxisSize.min,
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
                      'Já está quase acabando',
                      style: Theme.of(Get.context!).textTheme.headline2,
                    ),
                    Text(
                      'Aguente firme. Só mais algumas perguntas',
                      style: Theme.of(Get.context!).textTheme.headline2,
                    ),
                    const Divider(),
                    FormFieldWidget(
                      controller: RegisterController.to.streetController,
                      labelText: 'Qual é o nome da rua?',
                    ),
                    const Divider(),
                    FormFieldWidget(
                      controller: RegisterController.to.numberController,
                      labelText: 'Número',
                    ),
                    const Divider(),
                    FormFieldWidget(
                      controller: RegisterController.to.neighborhoodController,
                      labelText: 'Bairro',
                    ),
                    const Divider(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonWidget(
                        onTap: () =>
                            RegisterController.to.toRegisterInformation(),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

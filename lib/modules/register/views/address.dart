import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                width: Get.mediaQuery.size.width * 0.3,
                height: Get.mediaQuery.size.height,
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const ImageAvatarWidget(
                      path: 'assets/images/avatar-register.jpg',
                    ),
                    const Divider(),
                    const TextWidget(
                      text: 'Já está quase acabando',
                      alignmentDirection: Alignment.center,
                    ),
                    const TextWidget(
                      text: 'Aguente firme. Só mais algumas perguntas',
                      textSize: kTextSmall,
                      alignmentDirection: Alignment.center,
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

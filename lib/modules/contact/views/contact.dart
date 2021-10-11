import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/elevated.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/contact/controllers/contact.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContatoView extends StatelessWidget {
  final controller = Get.put<ContactController>(ContactController());

  ContatoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
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
                width: Get.mediaQuery.size.width * 0.3,
                height: Get.mediaQuery.size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ImageAvatarWidget(
                          path: 'assets/images/avatar-login.jpg'),
                      const Divider(),
                      Text(
                        'Olá, posso te ajudar?',
                        style: Theme.of(Get.context!).textTheme.headline2,
                      ),
                      Text(
                        'Dúvidas, reclamações, pedidos e sugestões',
                        style: Theme.of(Get.context!).textTheme.headline3,
                      ),
                      const Divider(),
                      FormFieldWidget(
                        controller: controller.controllerEmail,
                        labelText: 'Qual é o seu e-mail?',
                      ),
                      const Divider(),
                      FormFieldWidget(
                        controller: controller.controllerAssunto,
                        labelText: 'Qual é o assunto?',
                      ),
                      const Divider(),
                      FormFieldWidget(
                        controller: controller.controllerText,
                        labelText: 'Escreva aqui',
                        maxLines: true,
                      ),
                      const Divider(),
                      ButtonElevatedWidget(
                        onTapButton: () {},
                        buttonText: 'ENVIAR',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

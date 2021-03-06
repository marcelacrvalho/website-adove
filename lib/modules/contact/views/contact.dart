import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/elevated.dart';
import 'package:adove/global/widgets/form/form.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/contact/controllers/contact.dart';
import 'package:adove/modules/home/controllers/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

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
          mainAxisAlignment: HomeController.to.isMobile
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MenuWidget(),
            const Divider(),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: HomeController.to.isMobile
                    ? Get.mediaQuery.size.width
                    : Get.mediaQuery.size.width * 0.3,
                height: Get.mediaQuery.size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: HomeController.to.isMobile
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const ImageRenderer(
                        alt: 'Avatar',
                        child: ImageAvatarWidget(
                            path: 'assets/images/avatar-login.jpg'),
                      ),
                      const Divider(),
                      const TextRenderer(
                          child: TextWidget(
                        text: 'Ol??, posso te ajudar?',
                        textSize: 15.0,
                        alignmentDirection: Alignment.center,
                        isTextAlignCenter: true,
                      )),
                      const TextRenderer(
                        child: TextWidget(
                          text: 'D??vidas, reclama????es, pedidos e sugest??es',
                          alignmentDirection: Alignment.center,
                          isTextAlignCenter: true,
                        ),
                      ),
                      const Divider(),
                      FormFieldWidget(
                        controller: controller.controllerEmail,
                        labelText: 'Qual ?? o seu e-mail?',
                      ),
                      const Divider(),
                      FormFieldWidget(
                        controller: controller.controllerAssunto,
                        labelText: 'Qual ?? o assunto?',
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

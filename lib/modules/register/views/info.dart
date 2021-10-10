import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterInfo extends StatelessWidget {
  const RegisterInfo({Key? key}) : super(key: key);

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
                      text: 'Está acabando',
                      alignmentDirection: Alignment.center,
                    ),
                    const TextWidget(
                      text: 'Aguente firme. Só mais algumas perguntas',
                      textSize: kTextSmall,
                      alignmentDirection: Alignment.center,
                    ),
                    const Divider(),
                    const TextWidget(
                      text: 'Como você classificaria o seu negócio?',
                      textSize: kTextSmall,
                    ),
                    const Divider(),
                    _dropdownCategory(),
                    const Divider(),
                    const TextWidget(
                      text:
                          'Na sua empresa, existe a opção de atender o cliente na casa dele?',
                      textSize: kTextSmall,
                    ),
                    const Divider(),
                    _dropdownHomecare(),
                    const Divider(),
                    const TextWidget(
                      text: 'Quais os dias de atendimento?',
                      textSize: kTextSmall,
                    ),
                    const Divider(),
                    _dropdownOpen(),
                    const Divider(),
                    const TextWidget(
                      text: 'Quais meios de pagamento você aceita?',
                      textSize: kTextSmall,
                    ),
                    const Divider(),
                    _dropdownPayment(),
                    const Divider(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButtonWidget(
                        onTap: () => RegisterController.to.toRegisterName(),
                      ),
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

   Widget _dropdownCategory() {
      return Obx(
        () =>  DropdownButton<String>(
        value: RegisterController.to.categoryValue.value,
        isDense: true,
        isExpanded: true,
        items: RegisterController.to.categoryItems.map((String item) {
          return DropdownMenuItem<String>(
            child: TextWidget(
              text: item,
              textSize: kText,
              color: Colors.grey,
            ),
            value: item,
          );
        }).toList(),
        onChanged: (value) {
          RegisterController.to.categoryValue.value = value.toString();
        }),
      );
    }

     Widget _dropdownHomecare() {
      return Obx(
        () =>  DropdownButton<String>(
        value: RegisterController.to.homecareValue.value,
        isDense: true,
        isExpanded: true,
        items: RegisterController.to.homecare.map((String item) {
          return DropdownMenuItem<String>(
            child: TextWidget(
              text: item,
              textSize: kText,
              color: Colors.grey,
            ),
            value: item,
          );
        }).toList(),
        onChanged: (value) {
          RegisterController.to.homecareValue.value = value.toString();
        }),
      );
    }

    Widget _dropdownOpen() {
      return Obx(
        () =>  DropdownButton<String>(
        value: RegisterController.to.openValue.value,
        isDense: true,
        isExpanded: true,
        items: RegisterController.to.open.map((String item) {
          return DropdownMenuItem<String>(
            child: TextWidget(
              text: item,
              textSize: kText,
              color: Colors.grey,
            ),
            value: item,
          );
        }).toList(),
        onChanged: (value) {
          RegisterController.to.openValue.value = value.toString();
        }),
      );
    }

    Widget _dropdownPayment() {
      return Obx(
        () =>  DropdownButton<String>(
        value: RegisterController.to.paymentValue.value,
        isDense: true,
        isExpanded: true,
        items: RegisterController.to.payment.map((String item) {
          return DropdownMenuItem<String>(
            child: TextWidget(
              text: item,
              textSize: kText,
              color: Colors.grey,
            ),
            value: item,
          );
        }).toList(),
        onChanged: (value) {
          RegisterController.to.paymentValue.value = value.toString();
        }),
      );
    }
}

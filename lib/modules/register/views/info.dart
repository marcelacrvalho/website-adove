import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                width: 0.3.sw,
                height: 1.0.sh,
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
                    Text(
                      'Aguente firme. Só mais algumas perguntas',
                      style: Theme.of(Get.context!).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Como você classificaria o seu negócio?',
                        style: Theme.of(Get.context!).textTheme.headline3,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const Divider(),
                    _dropdownCategory(),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Na sua empresa, existe a opção de atender o cliente na casa dele?',
                        style: Theme.of(Get.context!).textTheme.headline3,
                      ),
                    ),
                    const Divider(),
                    _dropdownHomecare(),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Quais os dias de atendimento?',
                        style: Theme.of(Get.context!).textTheme.headline3,
                      ),
                    ),
                    const Divider(),
                    _dropdownOpen(),
                    const Divider(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Quais meios de pagamento você aceita?',
                        style: Theme.of(Get.context!).textTheme.headline3,
                      ),
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
      () => DropdownButton<String>(
          value: RegisterController.to.categoryValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.categoryItems.map((String item) {
            return DropdownMenuItem<String>(
              child: Text(
                item,
                style: Theme.of(Get.context!).textTheme.subtitle1
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
      () => DropdownButton<String>(
          value: RegisterController.to.homecareValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.homecare.map((String item) {
            return DropdownMenuItem<String>(
              child: Text(
                item,
                style: Theme.of(Get.context!).textTheme.subtitle1,
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
      () => DropdownButton<String>(
          value: RegisterController.to.openValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.open.map((String item) {
            return DropdownMenuItem<String>(
              child: Text(
                item,
                style: Theme.of(Get.context!).textTheme.subtitle1,
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
      () => DropdownButton<String>(
          value: RegisterController.to.paymentValue.value,
          isDense: true,
          isExpanded: true,
          items: RegisterController.to.payment.map((String item) {
            return DropdownMenuItem<String>(
              child: Text(
                item,
                style: Theme.of(Get.context!).textTheme.subtitle1,
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

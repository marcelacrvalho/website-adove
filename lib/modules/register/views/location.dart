import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:adove/modules/register/widgets/text/autocomplete.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterLocation extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  RegisterLocation({Key? key}) : super(key: key);

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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const ImageAvatarWidget(
                            path: 'assets/images/avatar-register.jpg',
                          ),
                          const Divider(),
                          Text(
                            'Essas informações são importantes',
                            style: Theme.of(Get.context!).textTheme.headline2,
                          ),
                          Text(
                            'Preencha-as com cuidado',
                            style: Theme.of(Get.context!).textTheme.headline2,
                          ),
                          const Divider(),
                          AutocompleteWidget(
                            controllerCity: controller.locationController,
                          ),
                          const Divider(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: FloatingActionButtonWidget(
                              onTap: () =>
                                  Get.toNamed(Routes.kRegisterStoreAddress),
                            ),
                          ),
                        ],
                      ),
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

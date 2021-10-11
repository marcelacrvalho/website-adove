import 'package:adove/global/widgets/button/fab.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/register/controllers/register.dart';
import 'package:adove/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoticeView extends StatelessWidget {
  final controller = Get.put<RegisterController>(RegisterController());

  NoticeView({Key? key}) : super(key: key);
  
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
              Text(
                'As próximas informações ditarão como seu negócio será '
                    'apresentado no aplicativo',
               style: Theme.of(Get.context!).textTheme.headline2,
               textAlign: TextAlign.center,
              ),
              Text(
                'Preencha-as com cuidado e atenção, como você cuida do '
                    'seu empreendimento',
               style: Theme.of(Get.context!).textTheme.headline3,
               textAlign: TextAlign.center,
              ),
              Container(
                width: 0.6.sw,
                height: 0.7.sh,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/bg-info-notice.png'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButtonWidget(
                  onTap: () => Get.offNamed(Routes.kRegisterStoreCity),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

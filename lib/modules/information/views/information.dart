import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/information/widgets/card_data.dart';
import 'package:adove/modules/information/widgets/row_app_info.dart';
import 'package:adove/modules/information/widgets/row_payment_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: MenuWidget(),
        ),
        const Divider(),
        _cardInfoRow(),
        const Divider(),
        _mockupApp(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: RowAppInformationWidget(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: RowPaymentInformationWidget(),
        ),
      ],
    );
  }

  Widget _cardInfoRow() {
    return Container(
      width: Get.mediaQuery.size.width,
      height: Get.mediaQuery.size.height * 0.45,
      padding: const EdgeInsets.only(
        top: 16.0,
        left: 8.0,
        right: 8.0,
        bottom: 0.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Get.mediaQuery.size.height * 0.4,
            width: Get.mediaQuery.size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                 Flexible(
                   child: CardDataWidget(
                     title: 'Brasil está em 1º',
                     subtitle: 'em consumo de procedimentos estéticos, no mundo',
                      ),
                 ),
                    Flexible(
                      child: CardDataWidget(
                        title: 'O 2º país do mundo',
                        subtitle: 'que mais faz buscas sobre beleza, na web',
                      ),
                    ),
                    Flexible(
                      child: CardDataWidget(
                                title: '57% da população',
                                subtitle: 'disse que cuidará mais da saúde e bem-estar, após a pandemia',
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mockupApp() {
    return SizedBox(
      height: Get.mediaQuery.size.height * 0.5,
      width: Get.mediaQuery.size.height * 0.5,
      child: Center(
        child: Image.asset('assets/images/img-info.png', fit: BoxFit.cover),
      ),
    );
  }
}

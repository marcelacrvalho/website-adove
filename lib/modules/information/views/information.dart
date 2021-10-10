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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const MenuWidget(),
            const Divider(),
            _cardInfoRow(),
            const Divider(),
            _mockupApp(),
            const RowAppInformationWidget(),
            const RowPaymentInformationWidget(),
          ],
        ),
      ),
    );
  }

  Widget _cardInfoRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: const CardDataWidget(
                title: 'Brasil está em 1º',
                subtitle: 'em consumo de procedimentos estéticos, no mundo',
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: const CardDataWidget(
                title: '2ª posição',
                subtitle:
                    'entre os países que mais fazem buscas sobre beleza, na web',
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: const CardDataWidget(
                title: '57% da população',
                subtitle:
                    'disse que cuidará mais da saúde e bem-estar, após a pandemia',
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mockupApp() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: Get.mediaQuery.size.height * 0.5,
        child: Center(
          child: Image.asset('assets/images/img-info.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}

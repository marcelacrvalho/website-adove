import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/modules/information/widgets/card_data.dart';
import 'package:adove/modules/information/widgets/row_app_info.dart';
import 'package:adove/modules/information/widgets/row_payment_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: MenuWidget(),
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: _cardInfoRow(),
        ),
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
    return SizedBox(
      height: 0.35.sh,
      width: 1.sw,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CardDataWidget(
            title: 'Brasil está em 1º',
            subtitle: 'em consumo de procedimentos estéticos, no mundo',
          ),
          CardDataWidget(
            title: '2ª posição',
            subtitle:
                'entre os países que mais fazem buscas sobre beleza, na web',
          ),
          CardDataWidget(
            title: '57% da população',
            subtitle:
                'disse que cuidará mais da saúde e bem-estar, após a pandemia',
          ),
        ],
      ),
    );
  }

  Widget _mockupApp() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 0.5.sh,
        width: 0.5.sw,
        child: Center(
          child: Image.asset('assets/images/img-info.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}

import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/information/widgets/card_data.dart';
import 'package:adove/modules/information/widgets/row_satisfaction.dart';
import 'package:adove/modules/information/widgets/row_app_info.dart';
import 'package:adove/modules/information/widgets/row_data_info.dart';
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
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: RowDataInfo(),
        ),
        const Divider(),
        _mockupApp(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: RowAppInformationWidget(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: RowSatisfaction(),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ColumnPaymentAndAddress(),
        ),
      ],
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowPaymentInformationWidget extends StatelessWidget {
  const RowPaymentInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: Get.mediaQuery.size.height * 0.6,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 0.2.sw,
                      child: Text(
                        'E quanto eu tenho que pagar?',
                        style: Theme.of(context).textTheme.headline1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Divider(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 0.2.sw,
                          child: Text(
                            'Apenas',
                            style: Theme.of(context).textTheme.headline2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          color: const Color(0XFFF1948A),
                          width: 0.12.sw,
                          height: 0.07.sh,
                          child: Center(
                            child: Text(
                              'R\$ 27, 00',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                fontSize: Theme.of(context).textTheme.headline1!.fontSize,
                                fontFamily: Theme.of(context).textTheme.headline1!.fontFamily,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Mensais',
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center,
                        ),
                        const Divider(),
                        Text(
                          'Sem taxa de adesão',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Sem burocracia',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                         Text(
                          'Cancele quando quiser',
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 0.6.sw,
                  height: 0.6.sh,
                  child: Image.asset('assets/images/bg-info-notice.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
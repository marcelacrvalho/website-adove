import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowAppInformationWidget extends StatelessWidget {
  const RowAppInformationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 0.6.sh,
        width: 1.0.sw,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconText(
              Icon(
                Icons.visibility,
                size: 0.03.sw,
                color: Colors.grey,
              ),
              'Mais visibilidade ao seu negócio',
            ),
            _iconText(
              Icon(
                Icons.event,
                size: 0.03.sw,
                color: Colors.grey,
              ),
              'Agendamento rápido e fácil ',
            ),
            _iconText(
              Icon(
                Icons.article,
                size: 0.03.sw,
                color: Colors.grey,
              ),
              'Novidades em tempo real',
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconText(Icon icon, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          width: 0.2.sw,
          child: Text(
            text,
            style: Theme.of(Get.context!).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

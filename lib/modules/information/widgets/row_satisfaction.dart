import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/avatar/avatar.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowSatisfaction extends StatelessWidget {
  const RowSatisfaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      height: Sizes.isMobile()
          ? Get.mediaQuery.size.height * 0.8
          : Get.mediaQuery.size.height * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: _testimonial(
              'assets/images/avatar-register.jpg',
              '\"Aprendi que o mais importante na minha área de atuação é estar'
                  ' antenada, e o Adove me proporciona isso e muito mais"',
              'Rafaela Monteiro, proprietária de uma clínica de Estética',
            ),
          ),
          Flexible(
            child: _testimonial(
              'assets/images/avatar-login.jpg',
              '\"Após o Adove, pude economizar R\$ 1700 e contratar um dentista júnior'
                  ' para me auxiliar no dia a dia com os pacientes\"',
              'Renan Baldoni, proprietário de uma clínica de Odontologia',
            ),
          ),
          Flexible(
            child: _testimonial(
              'assets/images/avatar-register.jpg',
              '\"Estou começando minha carreira, e ainda não tenho um local físico.'
                  ' O Adove permite que eu atenda minhas clientes em casa"',
              'Ellen Romero, iniciando um empreendimento de sobrancelhas',
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Widget _testimonial(String avatar, String phrase, String author) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(),
          ImageAvatarWidget(path: avatar),
          const Divider(),
          TextWidget(
            text: phrase,
            textSize: Sizes.isMobile() ? Sizes.h1Mobile - 4 : Sizes.h1Site - 10,
            alignmentDirection: Alignment.center,
            isTextAlignCenter: true,
          ),
          TextWidget(
            text: '- $author',
            textSize: Sizes.isMobile() ? Sizes.body1Mobile : Sizes.body2Site,
            alignmentDirection: Alignment.center,
            isTextAlignCenter: true,
          ),
        ],
      ),
    );
  }
}

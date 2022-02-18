import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:adove/modules/home/widgets/background.dart';
import 'package:adove/modules/home/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const MenuWidget(),
            const Divider(),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'Os melhores profissionais',
                        textSize:
                            Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                      ),
                      TextWidget(
                        text: 'Os mais atualizados',
                        textSize:
                            Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                        color: Colors.grey[700]!,
                      ),
                      TextWidget(
                        text: 'A dois cliques',
                        textSize:
                            Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                        color: Colors.black,
                      ),
                      const TextWidget(
                        text: 'Manicure. Pedicure. Barbearia.',
                      ),
                      const TextWidget(
                        text: 'Salão de Beleza. Massagem. Maquiagem.',
                      ),
                      const TextWidget(
                        text: 'Estética. Odontologia. Podologia. Sobrancelha.',
                      ),
                    ],
                  ),
                  Flexible(
                    child: Image.asset('assets/images/background.gif'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

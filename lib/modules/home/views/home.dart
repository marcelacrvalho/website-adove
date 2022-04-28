import 'package:adove/global/utilities/sizes.dart';
import 'package:adove/global/widgets/menu/menu.dart';
import 'package:adove/global/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/image_renderer/image_renderer_vm.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';

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
                      TextRenderer(
                        child: TextWidget(
                          text: 'Os melhores profissionais',
                          textSize:
                              Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                        ),
                      ),
                      TextRenderer(
                        child: TextWidget(
                          text: 'Os mais atualizados',
                          textSize:
                              Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                          color: Colors.grey[700]!,
                        ),
                      ),
                      TextRenderer(
                        child: TextWidget(
                          text: 'A dois cliques',
                          textSize:
                              Sizes.isMobile() ? Sizes.h1Mobile : Sizes.h1Site,
                          color: Colors.black,
                        ),
                      ),
                      const TextRenderer(
                        child: TextWidget(
                          text: 'Manicure. Pedicure. Psicologia.',
                        ),
                      ),
                      const TextRenderer(
                        child: TextWidget(
                          text: 'Salão de Beleza. Massagem. Maquiagem.',
                        ),
                      ),
                      const TextRenderer(
                        child: TextWidget(
                          text: 'Estética. Odontologia. Podologia. Depilação.',
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: ImageRenderer(
                      alt: 'Diamante',
                      child: Image.asset('assets/images/background.gif'),
                    ),
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
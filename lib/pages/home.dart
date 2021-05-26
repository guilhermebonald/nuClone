import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nubank/pages/colors.dart';
import 'package:nubank/pages/componentes/mini_card.dart';
import 'package:nubank/pages/componentes/my_card.dart';
import 'package:nubank/pages/componentes/rotas/account.dart';
import 'package:nubank/pages/componentes/rotas/config.dart';
import 'package:nubank/pages/componentes/rotas/credit_card.dart';
import 'package:nubank/pages/componentes/rotas/my_cards.dart';
import 'package:nubank/pages/componentes/second_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyColors myColors = MyColors();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.bgPrimary,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return
                //Container com todo o Background.
                Container(
              child: Column(
                children: [
                  //Row of Welcome.
                  Container(
                    width: constraints.maxWidth,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AutoSizeText(
                            'Olá, Guilherme',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Medium',
                                fontSize: 30),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.2,
                          ),
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: myColors.bgSecondary,
                                  shape: BoxShape.circle),
                              child: FaIcon(
                                FontAwesomeIcons.eyeSlash,
                                color: Colors.white.withOpacity(0.8),
                                size: 20,
                              ),
                            ),
                            onTap: () {
                              MyCard(
                                hide: true,
                              );
                              print(MyCard().hide);
                            },
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.02,
                          ),
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: myColors.bgSecondary,
                                  shape: BoxShape.circle),
                              child: FaIcon(
                                FontAwesomeIcons.cog,
                                color: Colors.white.withOpacity(0.8),
                                size: 20,
                              ),
                            ),
                            onTap: () {
                              Get.to(ConfigView());
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  //ListView of Cards
                  Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          InkWell(
                            child: MyCard(
                              icon: Icons.credit_card_outlined,
                              title: 'Cartão de Crédito',
                              subTitle: 'Fatura Atual',
                              myBank: 'R\$ 245,00',
                              subText: 'Limite disponível',
                              subValue: 'R\$ 5.434,00',
                              color: myColors.bgBlue,
                            ),
                            onTap: () {
                              Get.to(CreditCard(),
                                  transition: Transition.rightToLeft);
                            },
                          ),
                          Divider(
                            height: 7,
                            color: Colors.black.withOpacity(0),
                          ),
                          InkWell(
                            child: MyCard(
                              icon: FontAwesomeIcons.coins,
                              title: 'Conta',
                              subTitle: 'Saldo Disponível',
                              myBank: 'R\$ 5.456,00',
                            ),
                            onTap: () {
                              Get.to(MyAccount(),
                                  transition: Transition.rightToLeft);
                            },
                          ),
                          Divider(
                            height: 7,
                            color: Colors.black.withOpacity(0),
                          ),
                          InkWell(
                            child: MyCard(
                              subText: 'Meus cartões',
                              subValue: '',
                            ),
                            onTap: () {
                              Get.to(MyCards(),
                                  transition: Transition.downToUp);
                            },
                          ),
                          Divider(
                            height: 7,
                            color: Colors.black.withOpacity(0),
                          ),
                          SecondCard(
                            icon: FontAwesomeIcons.chartBar,
                            title: 'Investimentos Easynvest',
                            subTitle:
                                'Conheça a Easynvest e invista com taxa zero de corretagem e sem burocracias!',
                            btTitle: 'CONHECER',
                          ),
                          Divider(
                            height: 7,
                            color: Colors.black.withOpacity(0),
                          ),
                          SecondCard(
                            icon: FontAwesomeIcons.mobile,
                            title: 'Google Pay',
                            subTitle:
                                'Use o Google Pay com seus cartões Nubank',
                            btTitle: 'REGISTRAR MEU CARTÃO',
                          ),
                        ],
                      ),
                    ),
                  ),

                  //ListView of Options
                  Container(
                    width: constraints.maxWidth,
                    height: 120,
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MiniCard(
                          icon: FontAwesomeIcons.spa,
                          title: 'Pix',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.barcode,
                          title: 'Pagar',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.userPlus,
                          title: 'Indicar Amigos',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.fileContract,
                          title: 'Transferir',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.piggyBank,
                          title: 'Depositar',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.mobileAlt,
                          title: 'Recarga de Celular',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.ruler,
                          title: 'Ajustar Limite',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        MiniCard(
                          icon: FontAwesomeIcons.lock,
                          title: 'Bloquear Cartão',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

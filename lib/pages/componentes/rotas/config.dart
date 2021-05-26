import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:nubank/pages/colors.dart';

class ConfigView extends StatefulWidget {
  @override
  _ConfigViewState createState() => _ConfigViewState();
}

class _ConfigViewState extends State<ConfigView> {
  MyColors myColors = MyColors();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myColors.bgPrimary,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: constraints.maxWidth,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
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
                            ),
                            onTap: () {},
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
                                FontAwesomeIcons.times,
                                color: Colors.white.withOpacity(0.8),
                                size: 20,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: constraints.maxHeight * 0.15,
                    width: constraints.maxWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          'Agência 0001 Conta 7563448-6',
                          style: TextStyle(
                              fontFamily: 'Medium',
                              color: Colors.white,
                              fontSize: 10),
                        ),
                        AutoSizeText(
                          'Banco 260 - Nu Pagamentos S.A.',
                          style: TextStyle(
                              fontFamily: 'Medium',
                              color: Colors.white,
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.question, 'Me ajuda'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25, FontAwesomeIcons.user,
                      'Perfil'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.coins, 'Configurar conta'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25, FontAwesomeIcons.spa,
                      'Minhas chaves pix'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.ccVisa, 'Configurar cartão'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.store, 'Pedir conta PJ'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.envelopeOpen, 'Configurar notificações'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.mobileAlt, 'Configurações do app'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  _customRow(constraints.maxWidth * 0.25,
                      FontAwesomeIcons.questionCircle, 'Sobre'),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    color: Colors.white,
                    height: 0.2,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      child: AutoSizeText(
                        'SAIR DO APP',
                        style: TextStyle(
                            fontFamily: 'Medium',
                            color: Colors.white,
                            fontSize: 10),
                      ),
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

Widget _customRow(double myWidth, IconData iconData, String title) {
  return Container(
    padding: EdgeInsets.only(left: 8, bottom: 25),
    alignment: Alignment.centerLeft,
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 15),
            width: 30,
            child: FaIcon(
              iconData,
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
            child: AutoSizeText(
              title,
              style: TextStyle(
                  fontFamily: 'Medium', color: Colors.white, fontSize: 14),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: myWidth,
            child: FaIcon(
              FontAwesomeIcons.caretRight,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}

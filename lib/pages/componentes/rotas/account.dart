import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAState createState() => _MyAState();
}

class _MyAState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: Colors.black.withOpacity(0.7),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            child: ListView(
              children: [
                AutoSizeText(
                  'Saldo disponível',
                  style: TextStyle(
                      fontFamily: 'SemiBold',
                      fontSize: 13,
                      color: Colors.grey.shade700),
                ),
                AutoSizeText(
                  'R\$ 5.456,00',
                  style: TextStyle(
                      fontFamily: 'Bold', fontSize: 25, color: Colors.black),
                ),
                Divider(
                  height: 50,
                  color: Colors.black.withOpacity(0),
                ),

                //Dinheiro Guardado
                customRow(
                    constraints.maxWidth,
                    constraints.maxWidth * 0.2,
                    'Dinheiro guardado',
                    'R\$ 235,50',
                    FontAwesomeIcons.piggyBank),
                Divider(
                  height: 30,
                  color: Colors.black.withOpacity(0),
                ),
                customRow(
                    constraints.maxWidth,
                    constraints.maxWidth * 0.2,
                    'Rendimento da conta',
                    '+R\$ 5,06 este mês',
                    Icons.bar_chart_rounded),
                Divider(
                  height: 20,
                  color: Colors.black.withOpacity(0),
                ),
                Container(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      circleButton(FontAwesomeIcons.wallet, 'Depositar'),
                      SizedBox(
                        width: 20,
                      ),
                      circleButton(FontAwesomeIcons.barcode, 'Pagar'),
                      SizedBox(
                        width: 20,
                      ),
                      circleButton(FontAwesomeIcons.exchangeAlt, 'Transferir'),
                      SizedBox(
                        width: 20,
                      ),
                      circleButton(FontAwesomeIcons.commentDollar, 'Cobrar'),
                    ],
                  ),
                ),
                Divider(
                  height: 20,
                  thickness: 1.5,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  child: AutoSizeText(
                    'Histórico',
                    style: TextStyle(fontFamily: 'SemiBold', fontSize: 20),
                  ),
                ),
                customHistory(
                    FontAwesomeIcons.angleDoubleRight,
                    'Tranferência enviada',
                    'GUILHERME BONALD DE SOUZA',
                    '07 MAI',
                    'R\$ 12.500,00',
                    'Pix'),
                Divider(
                  height: 50,
                  thickness: 1,
                ),
                customHistory(
                    FontAwesomeIcons.angleDoubleLeft,
                    'Tranferência recebida',
                    'FERNANDO MARQUES ALBUQUERQUE',
                    '07 MAI',
                    'R\$ 12.500,00',
                    'Pix'),
                Divider(
                  height: 50,
                  thickness: 1,
                ),
                customHistory(FontAwesomeIcons.cashRegister,
                    'Pagamento da fatura', 'R\$ 140,00', '04 MAI', '', ''),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget customRow(double myWidth0, double myWidth1, String text0, String text1,
    IconData icon) {
  return Container(
    width: myWidth0,
    alignment: Alignment.centerLeft,
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 45,
            width: 35,
            child: FaIcon(
              icon,
              size: 25,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            width: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  text0,
                  style: TextStyle(
                      fontFamily: 'Light',
                      fontSize: 12,
                      color: Colors.grey.shade700),
                ),
                AutoSizeText(
                  text1,
                  style: TextStyle(
                      fontFamily: 'SemiBold',
                      fontSize: 15,
                      color: Colors.grey.shade700),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            height: 45,
            width: myWidth1,
            child: FaIcon(FontAwesomeIcons.angleRight),
          ),
        ],
      ),
    ),
  );
}

Widget circleButton(IconData icon, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 70,
        width: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey.withOpacity(0.3),
            elevation: 0,
            shape: CircleBorder(),
          ),
          onPressed: () {},
          child: FaIcon(
            icon,
            color: Colors.black,
          ),
        ),
      ),
      AutoSizeText(
        text,
        style: TextStyle(fontFamily: 'SemiBold'),
      ),
    ],
  );
}

Widget customHistory(IconData icon, String result, String name, String date,
    String value, String type) {
  return Container(
    //Background this.
    alignment: Alignment.centerLeft,
    width: double.infinity,
    //Row this.
    child: FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: FaIcon(icon),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AutoSizeText.rich(
                TextSpan(
                  text: result,
                  style: TextStyle(fontFamily: 'SemiBold', fontSize: 15),
                  children: [
                    date != null
                        ? TextSpan(
                            text: '         $date',
                            style: TextStyle(fontFamily: 'Light'))
                        : Container(),
                  ],
                ),
              ),
              AutoSizeText(
                name,
                style: TextStyle(
                    fontFamily: 'Medium',
                    fontSize: 15,
                    color: Colors.grey.shade700),
              ),
              value.isNotEmpty
                  ? AutoSizeText(
                      value,
                      style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 15,
                          color: Colors.grey.shade700),
                    )
                  : Container(),
              type.isNotEmpty
                  ? AutoSizeText(
                      type,
                      style: TextStyle(
                          fontFamily: 'Medium',
                          fontSize: 13,
                          color: Colors.grey.shade700),
                    )
                  : Container()
            ],
          )
        ],
      ),
    ),
  );
}

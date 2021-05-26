import 'package:auto_size_text/auto_size_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/pages/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CreditCard extends StatefulWidget {
  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  MyColors myColors = MyColors();
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    double appBarSize = AppBar().preferredSize.height;
    double notBar = MediaQuery.of(context).padding.top;
    double allBars = appBarSize + notBar;
    double sizeScreen = MediaQuery.of(context).size.height - allBars;
    return Scaffold(
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
      body: ListView(
        children: [
          Container(
            height: sizeScreen - 130,
            color: Colors.white,
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        'Fatura Atual',
                        style: TextStyle(
                            fontSize: 8,
                            fontFamily: 'Bold',
                            color: myColors.bgBlue),
                      ),
                      AutoSizeText(
                        'R\$ 245,00',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Medium',
                            color: myColors.bgBlue),
                      ),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'Limite disponível',
                              style: TextStyle(
                                fontSize: 13.5,
                                fontFamily: 'Medium',
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            AutoSizeText(
                              'R\$ 5.434,00',
                              style: TextStyle(
                                fontSize: 13.5,
                                fontFamily: 'ExtraBold',
                                color: myColors.bgGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        'Limite disponível',
                        style: TextStyle(
                          fontSize: 11,
                          fontFamily: 'Medium',
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      AutoSizeText(
                        'R\$ 5.434,00 ▸',
                        style: TextStyle(
                          fontSize: 17.5,
                          fontFamily: 'Bold',
                          color: myColors.bgGreen,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Page Indicator
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: SmoothPageIndicator(
              controller: controller,
              count: 2,
              axisDirection: Axis.horizontal,
              effect: ExpandingDotsEffect(
                  spacing: 7,
                  radius: 10.0,
                  dotWidth: 5.5,
                  dotHeight: 4.0,
                  strokeWidth: 15,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.grey.shade800),
            ),
          ),

          //Minicards
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 30),
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                myCard(myColors.bgPrimary, 'Pagar fatura',
                    FontAwesomeIcons.barcode),
                myCard(myColors.bgPrimary, 'Resumo de faturas',
                    FontAwesomeIcons.listUl),
                myCard(myColors.bgPrimary, 'Ajustar limite',
                    FontAwesomeIcons.stream),
                myCard(myColors.bgPrimary, 'Cartão virtual',
                    FontAwesomeIcons.mobileAlt),
                myCard(myColors.bgPrimary, 'Bloquear cartão',
                    FontAwesomeIcons.lock),
                myCard(myColors.bgPrimary, 'Indicar amigos',
                    FontAwesomeIcons.userPlus),
              ],
            ),
          ),

          //Timeline
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                myTimeline('Pagamento recebido', 'Você pagou R\$ 87,29',
                    '- 12 Mai', Colors.green.shade600),
                myTimeline('Pagamento recebido', 'Você pagou R\$ 15,00',
                    '- 05 Mai', Colors.green.shade600),
                myTimeline('Fatura paga', 'Fatura paga', '- 05 Mai',
                    Colors.green.shade600),
                myTimeline(
                    'Fatura fechada',
                    'Vence em 06/05, e hoje é o melhor dia para compras.',
                    '- 29 Abr',
                    Colors.red.shade600),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget myTimeline(
    String typeText, String infoText, String dataText, Color dotColor) {
  return TimelineTile(
    alignment: TimelineAlign.start,
    beforeLineStyle: LineStyle(thickness: 0.5),
    afterLineStyle: LineStyle(thickness: 0.5),
    indicatorStyle: IndicatorStyle(
      width: 13,
      color: dotColor,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    ),
    endChild: Container(
      padding: EdgeInsets.only(right: 20),
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            child: Row(
              children: [
                AutoSizeText(
                  typeText,
                  minFontSize: 2.0,
                  style: TextStyle(fontFamily: 'Bold', fontSize: 10.9),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: AutoSizeText(
                    dataText,
                    minFontSize: 2.0,
                    style: TextStyle(
                        fontFamily: 'Medium',
                        fontSize: 11,
                        color: Colors.grey.shade700),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff349DD5).withOpacity(0.05),
              borderRadius: BorderRadius.circular(2),
            ),
            width: 250,
            child: AutoSizeText(
              infoText,
              style: TextStyle(fontFamily: 'Medium', fontSize: 12),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget myCard(Color color, String text, IconData icon) {
  return Container(
    height: 70,
    width: 100,
    padding: EdgeInsets.only(left: 15, right: 20, top: 10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 0.5),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FaIcon(
          icon,
          color: color,
        ),
        Divider(
          height: 15,
          color: Colors.black.withOpacity(0),
        ),
        AutoSizeText(
          text,
          style:
              TextStyle(fontFamily: 'Light', fontSize: 10, color: Colors.black),
        )
      ],
    ),
  );
}

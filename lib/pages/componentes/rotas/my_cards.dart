import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCards extends StatefulWidget {
  @override
  _MyCardsState createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.times,
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
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                AutoSizeText(
                  'Meus cartões',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontFamily: 'SemiBold'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: AutoSizeText(
                    'Cartão virtual',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 13,
                        fontFamily: 'SemiBold'),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 30),
                  width: constraints.maxWidth,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: FaIcon(FontAwesomeIcons.creditCard),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                'Guilherme B Souza',
                                style: TextStyle(
                                    fontFamily: 'SemiBold', fontSize: 14),
                              ),
                              AutoSizeText(
                                '.... 0945',
                                style: TextStyle(
                                    fontFamily: 'Medium',
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: constraints.maxWidth * 0.4,
                          child: FaIcon(FontAwesomeIcons.caretRight),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: AutoSizeText(
                    'Cartão físico',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 13,
                        fontFamily: 'SemiBold'),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 30),
                  width: constraints.maxWidth,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: FaIcon(FontAwesomeIcons.ccVisa),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                'Guilherme B Souza',
                                style: TextStyle(
                                    fontFamily: 'SemiBold', fontSize: 14),
                              ),
                              AutoSizeText(
                                '.... 0945',
                                style: TextStyle(
                                    fontFamily: 'Medium',
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: constraints.maxWidth * 0.4,
                          child: FaIcon(FontAwesomeIcons.caretRight),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

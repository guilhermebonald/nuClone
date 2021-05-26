import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/pages/colors.dart';

class SecondCard extends StatefulWidget {
  SecondCard({this.icon, this.title, this.subTitle, this.btTitle});
  IconData icon;
  String title;
  String subTitle;
  String btTitle;

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<SecondCard> {
  MyColors myColors = MyColors();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //01 - Cartão de Credito
                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        FaIcon(
                          widget.icon,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        AutoSizeText(
                          widget.title,
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Light',
                              color: Colors.grey.shade600),
                        )
                      ],
                    ),
                  ),
                ),

                //02 - Fatura Atual
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                  alignment: Alignment.centerLeft,
                  child: AutoSizeText(
                    widget.subTitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Light',
                      color: Colors.black,
                    ),
                  ),
                ),

                //03 - Button

                Container(
                  margin: EdgeInsets.fromLTRB(20, 7, 20, 15),
                  width: constraints.maxWidth * 0.5,
                  height: 35,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {},
                    child: FittedBox(
                      child: AutoSizeText(
                        widget.btTitle,
                        style: TextStyle(fontFamily: 'Bold', fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

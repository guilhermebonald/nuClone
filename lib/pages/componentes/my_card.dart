import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/pages/colors.dart';

class MyCard extends StatefulWidget {
  MyCard(
      {this.icon,
      this.title,
      this.subTitle,
      this.myBank,
      this.subText,
      this.subValue,
      this.hide,
      this.color});
  IconData icon;
  String title;
  String subTitle;
  String myBank;
  String subText;
  String subValue;
  bool hide = false;
  Color color;

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
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
              children: [
                //01 - Cartão de Credito
                if (widget.icon == null || widget.subTitle == null)
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                    alignment: Alignment.centerLeft,
                  )
                else
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 25, 20, 10),
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
                            width: 13,
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
                widget.subTitle == null
                    ? Container()
                    : Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 5),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        child: AutoSizeText(
                          widget.subTitle,
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Light',
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),

                //03
                if (widget.myBank == null)
                  Container()
                else
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    child: AutoSizeText(
                      widget.myBank,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'SemiBold',
                        color: widget.color,
                      ),
                    ),
                  ),

                //04
                widget.subText == null
                    ? Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                      )
                    : Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                        alignment: Alignment.centerLeft,
                        width: double.infinity,
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                widget.subText,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Medium',
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              AutoSizeText(
                                widget.subValue,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'SemiBold',
                                  color: Colors.green.shade700,
                                ),
                              ),
                            ],
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

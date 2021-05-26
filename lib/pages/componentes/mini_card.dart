import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank/pages/colors.dart';

class MiniCard extends StatefulWidget {
  MiniCard({this.icon, this.title});
  IconData icon;
  String title;

  @override
  _MiniCardState createState() => _MiniCardState();
}

class _MiniCardState extends State<MiniCard> {
  MyColors myColors = MyColors();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 85,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
      decoration: BoxDecoration(
        color: myColors.bgSecondary,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            widget.icon,
            color: Colors.white,
            size: 18,
          ),
          Divider(
            height: 20,
            color: Colors.black.withOpacity(0),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 12,
              ),
              child: AutoSizeText(
                widget.title,
                textAlign: TextAlign.left,
                minFontSize: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Light',
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

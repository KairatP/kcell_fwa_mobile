import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextCell extends StatelessWidget {
  final String myText;
  final double fontSize;
  final Color color;

  const TextCell({
    super.key, 
    required this.myText,
    required this.fontSize,
    required this.color
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:5, left: 15, right: 10),
      height: 25,
      child: Text(
        overflow: TextOverflow.ellipsis,
        myText,
        style: TextStyle(
            fontSize: fontSize, color: color),
      ),
    );
  }
}

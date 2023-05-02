import 'package:flutter/material.dart';
class CustText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final String? fontName;
  const CustText({super.key, required this.text, this.textColor, this.fontSize, this.fontName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,style: TextStyle(color: textColor,fontFamily: fontName,fontSize: fontSize),),
    );
  }
}
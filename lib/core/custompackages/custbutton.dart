import 'package:flutter/material.dart';
class CustButtonElv extends StatelessWidget {
 final Function() onPressed;
 final String text;
 final double? height;
 final double? width;
 final Color? backgroundColor;
 final Color? textColor;
 final double? fontSize;
 final String? fontName;
  const CustButtonElv({super.key,
  required this.onPressed,
  required this.text,
  this.height,
  this.width,
this.backgroundColor,
this.textColor,
this.fontSize,
this.fontName
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text,style: TextStyle(color:textColor ,fontFamily: fontName,fontSize: fontSize),),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width!, height!),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
    );
  }
}
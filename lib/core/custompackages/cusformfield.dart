// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// Version 1.0.0
class CustFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? controller;
  final bool? obscure;
  final TextInputType? keyboardType;
  final String? fontName;
   const CustFormField({
    Key? key,
     required this.labelText,
     required this.hintText,
     required this.iconData,
      this.controller,
      this.obscure,
      this.keyboardType,
      this.fontName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
                          controller: controller,
                          obscureText:obscure == null?false:true,
                          keyboardType:keyboardType,
                          
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            label:Container(
                              margin:const EdgeInsets.symmetric(horizontal: 7),
                              child:  Text(labelText,style: TextStyle(fontFamily: fontName),)),
                            hintText:hintText,
                            hintStyle: TextStyle(fontSize: 18,fontFamily: fontName),
                            labelStyle: TextStyle(fontSize: 18,fontFamily: fontName),
                            suffixIcon:  Icon(iconData),
                            contentPadding:const EdgeInsets.symmetric(vertical: 14,horizontal: 20),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide:const BorderSide(width: 1.5)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide:const BorderSide(color: Color(0xff00BC77),width: 1.5)
                            ),
                          ),
                        ),
    );
  }
}

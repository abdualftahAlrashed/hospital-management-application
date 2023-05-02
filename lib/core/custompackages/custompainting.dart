

import 'package:flutter/material.dart';
class CustPainting extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.9;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.0040000,size.height*0.5000000);
    path0.lineTo(size.width*0.1960000,size.height*0.4944000);
    path0.lineTo(size.width*0.2240000,size.height*0.2000000);
    path0.lineTo(size.width*0.2640000,size.height*0.7000000);
    path0.lineTo(size.width*0.2800000,size.height*0.4988000);
    path0.lineTo(size.width*0.3400000,size.height*0.5000000);
    path0.lineTo(size.width*0.4000000,size.height*0.1000000);
    path0.lineTo(size.width*0.4800000,size.height*0.8000000);
    path0.lineTo(size.width*0.5160000,size.height*0.5000000);
    path0.lineTo(size.width*0.6000000,size.height*0.5000000);
    path0.lineTo(size.width*0.6360000,size.height*0.2000000);
    path0.lineTo(size.width*0.6800000,size.height*0.7000000);
    path0.lineTo(size.width*0.7200000,size.height*0.4966000);
    path0.lineTo(size.width*0.9968800,size.height*0.4966000);

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

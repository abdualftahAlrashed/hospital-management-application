import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hospitalapp/src.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child:Text("ارقام واحصائيات",style:TextStyle(fontSize:30,fontWeight:FontWeight.bold))),
        SizedBox(height:10),
           ImageSlideshow(
            width:350,
            height:150,
      indicatorColor: Colors.white,
      onPageChanged: (value){},
      autoPlayInterval: 3000,
      isLoop:true,
      children: [
        contentStatistics(
          context:context,
          numberstatistics:"50+",
          textcontent:"من الريادة"
        ),
        contentStatistics(
            context: context,
            numberstatistics: "1050+",
            textcontent: "عملية جراحية ناجحة"),
        contentStatistics(
            context: context,
            numberstatistics: "24+",
            textcontent: "ساعة عمل"),
        contentStatistics(
            context: context,
            numberstatistics: "15+",
            textcontent: "عام"),
            
      ]) 
      ],
    );
  }

  Container contentStatistics(
      {required BuildContext context,
      required String numberstatistics,
      required String textcontent}) {
    return Container(
      margin:EdgeInsets.only(left:6),
        color: Color(0xFF3199EB),
        child: Stack(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 60,
                    color: Color(0xFF1C69A6),
                    child: Center(
                        child: Text(numberstatistics,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold))),
                  ),
                ),
              ),
              Text(textcontent,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
            ],
          )
        ]));
  }
}

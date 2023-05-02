import 'package:hospitalapp/src.dart';
import 'dart:io';
class CommunicationData extends StatelessWidget {
  const CommunicationData({super.key});
  @override
  Widget build(BuildContext context) {
    final num="774018414";

    void sent()async{
      // await WhatsAppSenderFlutter.send(
      //   phones: [ "774018414"],
      //   message: "Hello",
      // );
      final whatsapp = 'whatsapp://send?phone=$num';
      // ignore: deprecated_member_use
      await  launch(whatsapp);
    }
    return Container(
      color:Colors.white,
      child:Column(
        children: [
          Center(
            child:Text("بيانات التواصل معنا",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold),)),
         Center(
          child:Text("يمكنكم التواصل معنا على مدار الساعة عبر الوسئل التالية"),),
          // content_communication(
          //     context: context,
          //     icons: Icon(Icons.phone, size: 70),
          //     title: "الهاتف",
          //     subtitle: "774018414",
          //     su: "711560233"),
          // content_communication(
          //     context: context,
          //     icons: Icon(Icons.email, size: 70),
          //     title: "البريد الالكتروني",
          //     subtitle: "22abdualftah@gmail.com",
          //     su: ""),
          // content_communication(
          //     context: context,
          //     icons: Icon(Icons.location_city, size: 70),
          //     title: "العنوان",
          //     subtitle: "اليمن - إب - ذي السفال - قرية الجشاعة",
          //     su: " "),
////////////////////////////
              Container(
            margin:EdgeInsets.all(4.0),
            height:100.0,
            child:Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children:[
                Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 180, 180),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 25,
                              color: Colors.black12)
                        ]
                        ),
                ),
                FittedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       InkWell(
                          onTap: (){
                            FlutterPhoneDirectCaller.callNumber("774018414");
                          },
                          child: c(
                                  context: context,
                                  icons: Icon(Icons.phone, size:50),
                                  title: "الهاتف",
                                  subtitle: "774018414",
                                  su: "711560233"),
                        ),
                      
                      InkWell(
                        child: c(
                                context: context,
                                icons: Icon(Icons.email, size: 50),
                                title: "البريد الالكتروني",
                                subtitle: "22abdualftah@gmail.com",
                                su: ""),
                      ),
                      InkWell(
                        onTap:() {
                          sent();
                        },
                        child: c(
                            context: context,
                            icons: Icon(Icons.whatsapp, size: 50),
                            title: "التواصل عبر الواتس",
                            subtitle: "774018414",
                            su: ""),
                      ),
                      InkWell(
                        child: c(
                                context: context,
                                icons: Icon(Icons.location_city, size: 50),
                                title: "العنوان",
                                subtitle: '''
                                   اليمن - إب - ذي السفال 
                                 قرية الجشاعة          ''',
                                su: " "),
                      ),
                       
                    ],
                  ),
                )
              ]
              )
              )
    ]
    )
    );
  }

  Container content_communication({
    required BuildContext context,
    required Icon icons,
    required String title,
    required String subtitle,
    required String su,
  }) {
    return Container(
            margin:EdgeInsets.all(10.0),
            height:200.0,
            child:Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children:[
                Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 183, 180, 180),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 15),
                              blurRadius: 25,
                              color: Colors.black12)
                        ]
                        ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                    width: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    )),
                                icons,
                              ],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(title,
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          SizedBox(height: 4),
                          Text(subtitle),
                          SizedBox(height: 2),
                          Text(su)
                        ],
                      ),
                    )
                    ) 
                
        ],
      )   
      )                     ;
  }
Padding c({
  required BuildContext context,
    required Icon icons,
    required String title,
    required String subtitle,
    required String su,
}){
  return  Padding(
    padding: const EdgeInsets.only(right:4),
    child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Container(
           height:50,
           child: Stack(
             children: [
               Container(
                   width:50,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     shape: BoxShape.circle,
                   )),
               IconButton(icon:icons,onPressed: (){},),
             ],
           ),
         ),
         SizedBox(height:2),
         Text(title,
             style: TextStyle(
                 fontSize: 20, fontWeight: FontWeight.bold)),
         SizedBox(height: 2),
         Text(subtitle),
         SizedBox(height: 2),
         Text(su)
       ],
     ),
  ) ;
}
}
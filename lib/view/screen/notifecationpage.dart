import 'package:hospitalapp/src.dart';
class Notifecation extends StatelessWidget {
  const Notifecation({super.key});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
       child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff242734),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text("قائمة الاشعارات",style:TextStyle(fontSize:19,color:Colors.white,fontWeight:FontWeight.bold)),
          ),
          body: Column(
            children: [
              const SizedBox(height:20.0),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                     // margin:const EdgeInsets.symmetric(horizontal:15.0),
                      decoration:const BoxDecoration(
                        color: Color.fromARGB(255, 107, 114, 114),
                        borderRadius: BorderRadius.only(topLeft:Radius.circular(40.0),topRight: Radius.circular(40.0))
                      ),
                    
                    ),
                    // ListView(
                    //   children: [
                    //     widgetnotifacation(
                    //           context: context,
                    //           image: "assets/images/p4.jpg",
                    //           titile: "اشعار جديد",
                    //           suptitle: "اخبار التطبيق",
                    //           desc: "وصف الاشعار"),
                    //           widgetnotifacation(
                    //           context: context,
                    //           image: "assets/images/p4.jpg",
                    //           titile: "اشعار جديد",
                    //           suptitle: "اخبار التطبيق",
                    //           desc: "وصف الاشعار"),
                    //           widgetnotifacation(
                    //           context: context,
                    //           image: "assets/images/p4.jpg",
                    //           titile: "اشعار جديد",
                    //           suptitle: "اخبار التطبيق",
                    //           desc: "وصف الاشعار"),
                    //           widgetnotifacation(
                    //           context: context,
                    //           image: "assets/images/p4.jpg",
                    //           titile: "اشعار جديد",
                    //           suptitle: "اخبار التطبيق",
                    //           desc: "وصف الاشعار"),
                    //   ],

                    // ) 
                    ListView.builder(
                      itemCount: latestlist.length,
                      itemBuilder:((context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
                      child: Stack(
                        children: [
                          Container(
                              margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical:15.0),
                              width: 330.0,
                            //  height: 170.0,
                             decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow:[
                                  const BoxShadow(
                                    offset: Offset(0, 15),
                                    blurRadius:25,
                                    color:Colors.black12
                                  )
                                ],
                                ),
                             child:Column(
                               children: [
                                 ListTile(
                                  leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                       // child: const Icon(Icons.notification_add,size: 30,color:Colors.black ),
                        child: Image.asset(
                          '${latestlist[index].image!}',
                          height: 200.0,
                          width: 100.0,
                          fit: BoxFit.fill,
                        )),
                        title: Text('${latestlist[index].title!}',style:const TextStyle(fontSize:19,fontWeight:FontWeight.bold)),
                        subtitle:  Text("suptitle",style:const TextStyle(fontSize:18)),
                      ),
                      const Divider(height:25.0,color:Colors.black,),
                     const SizedBox(height:10.0),
                     // ignore: prefer_const_constructors
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal:15.0),
                       child:  Text('${latestlist[index].text!}',style:const TextStyle(fontSize:17.0)),
                     )
                               ],
                             ),
                             ),                         
                           
                        ],
                      ),
                    ),
                  ))) 
                  ],
                ),
              )
            ],
          ),
        ),
       ));
  }

  // Padding widgetnotifacation({
  //   required BuildContext context,
  //   // required String image,
  //   // required String titile,
  //   // required String suptitle,
  //   // required String desc
  //   required List listes
  // }) {
  //   return Padding(
  //                   padding: const EdgeInsets.all(8.0),
  //                   child: Container(
  //                     margin: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15.0),
  //                     child: Stack(
  //                       children: [
  //                         Container(
  //                             margin: const EdgeInsets.symmetric(horizontal: 15.0,vertical:15.0),
  //                             width: 330.0,
  //                             height: 170.0,
  //                            decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(20.0),
  //                           color: Colors.white,
  //                               // ignore: prefer_const_literals_to_create_immutables
  //                               boxShadow:[
  //                                 const BoxShadow(
  //                                   offset: Offset(0, 15),
  //                                   blurRadius:25,
  //                                   color:Colors.black12
  //                                 )
  //                               ],
  //                               ),
  //                            child:Column(
  //                              children: [
  //                                ListTile(
  //                                 leading: ClipRRect(
  //                       borderRadius: BorderRadius.circular(10),
  //                      // child: const Icon(Icons.notification_add,size: 30,color:Colors.black ),
  //                       child: Image.asset(
  //                         '$image',
  //                         height: 200.0,
  //                         width: 100.0,
  //                         fit: BoxFit.fill,
  //                       )),
  //                       title: Text(titile,style:const TextStyle(fontSize:19,fontWeight:FontWeight.bold)),
  //                       subtitle:  Text(suptitle,style:const TextStyle(fontSize:18)),
  //                     ),
  //                     const Divider(height:25.0,color:Colors.black,),
  //                    const SizedBox(height:10.0),
  //                    // ignore: prefer_const_constructors
  //                    Padding(
  //                      padding: const EdgeInsets.symmetric(horizontal:15.0),
  //                      child:  Text(desc,style:const TextStyle(fontSize:17.0)),
  //                    )
  //                              ],
  //                            ),
  //                            ),                         
                           
  //                       ],
  //                     ),
  //                   ),
  //                 );
  // }
}

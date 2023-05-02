import 'package:flutter/material.dart';
import 'package:hospitalapp/src.dart';

class searchitem extends SearchDelegate {
  late int size;
  late String text;

 // List name = doctorimage.
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            close(context, null);
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return container_doctor(name: query,index:size);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List fltername = doctorimage.where((element) => element.body!.contains(query)).toList();
    return ListView.builder(
        itemCount: query == "" ? doctorimage.length : fltername.length,
        itemBuilder: (context, i) {
          return InkWell(
              onTap: () {
                query = query == "" ? doctorimage[i].body : fltername[i];
                size = i;
                showResults(context);
              },
    child:search(fltername:fltername,doctorimage:doctorimage,query: query,i:i)
      );
        }
        );
  }
}
///////////////////////////search
class search extends StatelessWidget {
  List fltername,doctorimage;
  int i;
  String query;
  search({Key? key,required this.fltername,required this.doctorimage,required this.query,required this.i,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: EdgeInsets.all(10),
              child: query == ""
                  ? Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 3),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: ColorApp.black, width: 1)),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(fltername[i].image!),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(children: [
                      Text(fltername[i].body!),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          )
                        ],
                      ),
                      MaterialButton(
                          color: ColorApp.green,
                          textColor: ColorApp.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: ColorApp.green, width: 2)),
                          onPressed: () {},
                          child: Text(
                            "إحجز الان",
                            style: TextStyle(fontSize: 20),
                          ))
                    ]),
                    Expanded(child: Container()),
                    Column(children: [
                      Row(children: [Text("180k"), Icon(Icons.preview)]),
                      Row(children: [Text("180k"), Icon(Icons.person)])
                    ])
                  ]),
                ),
              )
                  : Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 3),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: ColorApp.black, width: 1)),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Row(children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(doctorimage[i].image!),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Column(children: [
                      Text(doctorimage[i].body!),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: ColorApp.yellow,
                          )
                        ],
                      ),
                      MaterialButton(
                          color: ColorApp.green,
                          textColor: ColorApp.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: ColorApp.green, width: 2)),
                          onPressed: () {},
                          child: Text(
                            "إحجز الان",
                            style: TextStyle(fontSize: 20),
                          ))
                    ]),
                    Expanded(child: Container()),
                    Column(children: [
                      Row(children: [Text("180k"), Icon(Icons.preview)]),
                      Row(children: [Text("180k"), Icon(Icons.person)])
                    ])
                  ]),
                ),
              )
                  );

  }
}

//////////////////////////////////////container
class container_doctor extends StatelessWidget {
  String name;
  int index;
   container_doctor({Key? key,required this.name,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 3),
        padding: EdgeInsets.all(10),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(50),
                  child:Image.asset(doctorimage[index].image!,
                    width:100,
                    height:100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment:Alignment.center,
                  child: Column(children: [
                    Text(name),
                    Text("استشاري اورام"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: ColorApp.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorApp.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorApp.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorApp.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: ColorApp.yellow,
                        )
                      ],
                    ),
                    MaterialButton(
                        color: ColorApp.green,
                        textColor: ColorApp.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: ColorApp.green, width: 2)),
                        onPressed: () {},
                        child: Text(
                          "التقيمات3.3",
                          style: TextStyle(fontSize: 20),
                        )
                    )
                  ]
                  ),
                ),
                Divider(color:ColorApp.black,),
                Container(
                    alignment: Alignment.topRight,
                    child:Column(
                      children: [
                        Text("من نحن",textAlign:TextAlign.start,style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                        SizedBox(height:4,),
                        Text("استشاري اول جراحة الاورام المستعصية"),
                      ],)
                ),
                Divider(color:ColorApp.black,),
                Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 90,
                      height: 100,
                      decoration:BoxDecoration(
                          border:Border.all(color:ColorApp.black,width:2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.person,color:ColorApp.green,size: 50,),
                          SizedBox(height:5,),
                          Text("الاطباء",style:TextStyle(fontSize: 20,color:ColorApp.green))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 90,
                      height: 100,
                      decoration:BoxDecoration(
                          border:Border.all(color:ColorApp.black,width:2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.person,color:ColorApp.green,size: 50,),
                          SizedBox(height:5,),
                          Text("الاطباء",style:TextStyle(fontSize: 20,color:ColorApp.green))
                        ],
                      ),
                    ),Container(
                      margin: EdgeInsets.all(10),
                      width: 90,
                      height: 100,
                      decoration:BoxDecoration(
                          border:Border.all(color:ColorApp.black,width:2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.person,color:ColorApp.green,size: 50,),
                          SizedBox(height:5,),
                          Text("الاطباء",style:TextStyle(fontSize: 20,color:ColorApp.green))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 90,
                      height: 100,
                      decoration:BoxDecoration(
                          border:Border.all(color:ColorApp.black,width:2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.location_city,color:ColorApp.green,size: 50,),
                          SizedBox(height:5,),
                          Text("شركاء العمل",style:TextStyle(fontSize: 15,color:ColorApp.green))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 90,
                      height: 100,
                      decoration:BoxDecoration(
                          border:Border.all(color:ColorApp.black,width:2),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.place,color:ColorApp.green,size: 50,),
                          SizedBox(height:5,),
                          Text("العنوان",style:TextStyle(fontSize: 20,color:ColorApp.green))
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(color: ColorApp.black,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text("اوقات الدوام",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
                        Expanded(child: Container()),
                        Icon(Icons.keyboard_arrow_left,size:30,)
                      ],
                    ),
                    SizedBox(height:7,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin:EdgeInsets.only(right: 16),
                            width:100,
                            height:100,
                            color: ColorApp.green,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("الثلاثاء",style:TextStyle(fontSize:15,color:ColorApp.white),),
                                Divider(color: ColorApp.black,),
                                Text("م08:00 م04:00",style:TextStyle(fontSize:15,color: ColorApp.white))
                              ],
                            ),
                          ),

                          Container(
                            margin:EdgeInsets.only(right: 16),
                            width:100,
                            height:100,
                            color: ColorApp.green,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("الاربعاء",style:TextStyle(fontSize:15,color:ColorApp.white),),
                                Divider(color: ColorApp.black,),
                                Text("م08:00 م04:00",style:TextStyle(fontSize:15,color: ColorApp.white))
                              ],
                            ),
                          ),

                          Container(
                            margin:EdgeInsets.only(right: 16),
                            width:100,
                            height:100,
                            color: ColorApp.green,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("السبت",style:TextStyle(fontSize:15,color:ColorApp.white),),
                                Divider(color: ColorApp.black,),
                                Text("م08:00 م04:00",style:TextStyle(fontSize:15,color: ColorApp.white))
                              ],
                            ),
                          ),

                          Container(
                            margin:EdgeInsets.only(right: 16),
                            width:100,
                            height:100,
                            color: ColorApp.green,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("الاثنين",style:TextStyle(fontSize:15,color:ColorApp.white),),
                                Divider(color: ColorApp.black,),
                                Text("م08:00 م04:00",style:TextStyle(fontSize:15,color: ColorApp.white))
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 16),
                            width:100,
                            height:100,
                            color: ColorApp.green,
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Text("الثلاثاء",style:TextStyle(fontSize:15,color:ColorApp.white),),
                                Divider(color: ColorApp.black,),
                                Text("م08:00 م04:00",style:TextStyle(fontSize:15,color: ColorApp.white))
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height:10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex:2,
                      child: MaterialButton(
                        color:ColorApp.green,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        onPressed: (){},
                        child:Text("احجز الان",style:TextStyle(fontSize:25,color:ColorApp.white),),
                      ),
                    ),
                    SizedBox(width:4,),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        color:ColorApp.green,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        onPressed: (){},
                        child:Icon(Icons.call,size:30,color:ColorApp.white,),
                      ),
                    ),
                  ],
                )
              ]
          ),
        ),
      ),
    );
  }
}


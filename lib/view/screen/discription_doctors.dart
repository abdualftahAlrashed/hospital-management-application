import 'package:hospitalapp/src.dart';

class dicription_doctor extends StatelessWidget {
  String name;
  int index;
  dicription_doctor({Key? key, required this.name, required this.index})
      : super(key: key);
  _callphone() async{
   const number = "711560233";
   bool? call = await FlutterPhoneDirectCaller.callNumber(number);
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 100),
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    padding: EdgeInsets.symmetric(vertical: 60),
                    height: 250,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 8, 183, 119),
                        Color.fromARGB(255, 40, 177, 127),
                        Color.fromARGB(255, 112, 177, 153),
                        Color.fromARGB(255, 8, 183, 119),
                        Color.fromARGB(255, 129, 167, 153),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    ),
                    child: CustomPaint(
                      size: Size(size.width - 50, 150),
                      painter: CustPainting(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 185),
                    padding: EdgeInsets.all(10),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                doctorimage[index].image!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "استشاري اورام",
                                  style: TextStyle(fontSize: 15),
                                ),
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
                                        side: BorderSide(
                                            color: ColorApp.green, width: 2)),
                                    onPressed: () {},
                                    child: Text(
                                      "التقيمات3.3",
                                      style: TextStyle(fontSize: 20),
                                    ))
                              ]),
                            ),
                            Divider(
                              color: ColorApp.black,
                            ),
                            Container(
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: [
                                    Text("من نحن",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text("استشاري اول جراحة الاورام المستعصية"),
                                  ],
                                )),
                            Divider(
                              color: ColorApp.black,
                            ),
                            Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 90,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorApp.black, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: ColorApp.green,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("الاطباء",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: ColorApp.green))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 90,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorApp.black, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: ColorApp.green,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("الاطباء",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: ColorApp.green))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 90,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorApp.black, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: ColorApp.green,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("الاطباء",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: ColorApp.green))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 90,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorApp.black, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_city,
                                        color: ColorApp.green,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("شركاء العمل",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: ColorApp.green))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 90,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorApp.black, width: 2),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.place,
                                        color: ColorApp.green,
                                        size: 50,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("العنوان",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: ColorApp.green))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              color: ColorApp.black,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("اوقات الدوام",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Expanded(child: Container()),
                                    Icon(
                                      Icons.keyboard_arrow_left,
                                      size: 30,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        width: 100,
                                        height: 100,
                                        color: ColorApp.green,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              "الثلاثاء",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorApp.white),
                                            ),
                                            Divider(
                                              color: ColorApp.black,
                                            ),
                                            Text("م08:00 م04:00",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: ColorApp.white))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        width: 100,
                                        height: 100,
                                        color: ColorApp.green,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              "الاربعاء",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorApp.white),
                                            ),
                                            Divider(
                                              color: ColorApp.black,
                                            ),
                                            Text("م08:00 م04:00",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: ColorApp.white))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        width: 100,
                                        height: 100,
                                        color: ColorApp.green,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              "السبت",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorApp.white),
                                            ),
                                            Divider(
                                              color: ColorApp.black,
                                            ),
                                            Text("م08:00 م04:00",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: ColorApp.white))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        width: 100,
                                        height: 100,
                                        color: ColorApp.green,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              "الاثنين",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorApp.white),
                                            ),
                                            Divider(
                                              color: ColorApp.black,
                                            ),
                                            Text("م08:00 م04:00",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: ColorApp.white))
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(right: 16),
                                        width: 100,
                                        height: 100,
                                        color: ColorApp.green,
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              "الثلاثاء",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: ColorApp.white),
                                            ),
                                            Divider(
                                              color: ColorApp.black,
                                            ),
                                            Text("م08:00 م04:00",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: ColorApp.white))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: MaterialButton(
                                    color: ColorApp.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    onPressed: () {},
                                    child: Text(
                                      "احجز الان",
                                      style: TextStyle(
                                          fontSize: 25, color: ColorApp.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: MaterialButton(
                                    color: ColorApp.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    onPressed: () {
                                      _callphone();
                                    },
                                    child: Icon(
                                      Icons.call,
                                      size: 30,
                                      color: ColorApp.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: 80,
                color: ColorApp.green,
                child: ImageSlideshow(
                    indicatorColor: ColorApp.green,
                    onPageChanged: (value) {
                      //debugPrint('Page changed: $value');
                    },
                    autoPlayInterval: 3000,
                    isLoop: true,
                    children: [
                      ...List.generate(
                        onslidersimages.length,
                        (index) => Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          elevation: 0,
                          margin: const EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Image.asset(
                            onslidersimages[index].image!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ]
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

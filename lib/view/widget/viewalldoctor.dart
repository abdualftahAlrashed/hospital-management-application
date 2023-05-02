import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:hospitalapp/src.dart';

// ignore: must_be_immutable
class viewall extends StatelessWidget {
  List fltername;
  viewall({
    Key? key,
    required this.fltername,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 122, 173, 155),
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: ColorApp.green,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  floating: true,
                  pinned: true,
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    title: Text("الكادر الطبي"),
                    centerTitle: false,
                    background: Image.asset(
                      "assets/images/one.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                  childCount: fltername.length,
                  (context, i) => Container(
                    margin:
                        EdgeInsets.only(left: 10, right: 10, top: 7, bottom: 5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: ColorApp.black, width: 1)),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(fltername[i].image!),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Column(children: [
                          Text(
                            fltername[i].body!,
                            style: TextStyle(fontSize: 18),
                          ),
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
                              onPressed: () {
                                Get.to(() => reserve());
                              },
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
                  ),
                )
                )
              ],
            )
            )
            );
  }
}

import 'package:hospitalapp/maine/communication.dart';
import 'package:hospitalapp/src.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    GlobalKey<ScaffoldState> glopalekey = new GlobalKey<ScaffoldState>();
    HomeController controler = Get.put(HomeController());
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            key: glopalekey,
            drawer: Drawers(),
            body: SafeArea(
                child: Stack(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 24.0),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.center,
                        child: CollapsingToolbar(
                          controller: controler.controllers,
                          expandedHeight: 160,
                          collapsedHeight: 95,
                          //  horizontalPadding:7,
                          decorationForegroundColor: ColorApp.green,
                          decorationBackgroundColor: Colors.white,
                          onCollapsing: (double offset) {
                            controler.headerOffset = offset;
                            controler.iconsize = 90;
                            controler.iconpadding = 18;
                          },
                          title: const Text(
                            'Romantic Developer',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    const CircleBorder()),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                elevation: MaterialStateProperty.all(0.0),
                              ),
                              // child: Padding(
                              //     padding: const EdgeInsets.all(7.0),
                              //     child: InkWell(
                              //       onTap: (){
                              //         showSearch(
                              //       context: context, delegate: searchitem());
                              //       },
                              //       child: AnimSearchBar(
                              //           color: ColorApp.green,
                              //           width: 350,
                              //           helpText: "بحث",
                              //           textController: controler.textcontroller,
                              //           onSuffixTap: () =>
                              //               controler.textcontroller.clear()),
                              //     )
                              //     ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: IconButton(
                                    onPressed: () {
                                      showSearch(
                                          context: context,
                                          delegate: searchitem());
                                    },
                                    icon: Icon(Icons.search)),
                              ),
                            ),
                          ],
                          featureCount: 6,
                          featureIconBuilder: (context, index) {
                            return Container(
                                margin: const EdgeInsets.only(right: 16),
                                child: Column(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      homeicons.appareimage[index].image!,
                                      height: 70,
                                      width: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    homeicons.appareimage[index].body!,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                ]));
                          },
                          featureLabelBuilder: (context, index) {
                            return Text("");
                          },
                          featureOnPressed: (context, index) {},
                        ),
                      ),
                      Expanded(
                          child: Container(
                        color: Color.fromARGB(255, 252, 248, 248),
                        child: SingleChildScrollView(
                            padding: EdgeInsets.only(bottom: 100),
                            controller: controler.controllers,
                            child: Column(children: [
                              Container(
                                height: controler.headerOffset,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              //////////////////imageslideshow
                              ImageSlideshows(),
                              /////////////////
                              Marquees(),
                              ////////////////////////////////الكادر الطبي
                              medicalStaff(),
                              //////////////////////////////////////////////
                              ////////////////////////////////الاقسام
                              medicalDepartments(),
                              //////////////////////////////////////////////
                              Graidlayout(),
                              /////////////////////
                              //////////////////////الارقام والاحصائيات
                              Statistics(),
                              //////////////////
                              latestnews(),
                              SizedBox(height:10,),
                              ///////////////////communication
                              CommunicationData()
                              ///
                              
                            ])),
                      )),
                    ])),
                custompaintsbottom(size: size, glopalekey: glopalekey),
              ],
            ))));
  }
}

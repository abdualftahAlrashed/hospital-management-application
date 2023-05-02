import 'package:hospitalapp/src.dart';

class Gridview extends StatelessWidget {
  List sections;
  Gridview({super.key, required this.sections});
  @override
  Widget build(BuildContext context) {
    double carwidth = context.width / 2;
    double carheight = context.height / 3;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorApp.green,
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: ColorApp.green,
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  floating: true,
                  pinned:true,expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    title:Text("الاقسام"),
                    centerTitle:false,
                    background: Image.asset(
                      "assets/images/one.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverGrid(
                  delegate:
                   SliverChildBuilderDelegate(
                    childCount:sections.length,
                    (context, index) => Container(
                              padding: EdgeInsets.only(top: 10),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.asset(
                                          sections[index].image!,
                                          height: 150,
                                          //context.height / 6,
                                          width:
                                              170, //MediaQuery.of(context).size.width,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        sections[index].body!,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Get.to(sectionDescription(
                                              index: index,
                                            ));
                                          },
                                          child: const Text(
                                            "اكثر",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                           // padding: EdgeInsets.only(top: 20),
                               
                  ),
                 gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing:4,
                    mainAxisSpacing: 4,
                    childAspectRatio: carwidth / carheight)
                 )
              ],
            )
            )
            );
  }
}

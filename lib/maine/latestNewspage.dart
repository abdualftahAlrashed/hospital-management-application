
import 'package:hospitalapp/src.dart';

class latestnewss extends StatelessWidget {
  latestnewss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery
        .of(context)
        .size;
    // return ListView.builder(itemBuilder: (context,index){
    //   return contentlatesnews(sized);
    // });
    return Directionality(
      textDirection:TextDirection.rtl,
      child: SafeArea(child: Scaffold(
        backgroundColor:ColorApp.kprimarycolors,
        appBar: AppBar(
          backgroundColor:ColorApp.kprimarycolors,
        elevation:0,
          title:Text("الاخبار",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
          centerTitle: false,
        ),
        body: Column(
          children: [
            SizedBox(height:20.0,),
            Expanded(
              child: Stack(
                children: [
                  Container(
                  decoration: BoxDecoration(
                    color: ColorApp.kBackgroundcolor,
                  borderRadius:BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                  ),
                  ),
                  ListView.builder(
                      itemCount:latestlist.length,
                      itemBuilder: (context,index)=>contentlatesnews(index:index,size:sized,contex: context, listcontent:latestlist))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
    Padding contentlatesnews({
      required int index,
      required Size size,
      required BuildContext contex,
      required List listcontent

}) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: EdgeInsets.only(top: 15.0),
        //  height: 300.0,
          width: double.infinity,
          child: InkWell(
            onTap: () {},
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0.0,
                  child: Container(
                      height: 40,
                      width: size.width,
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(20.0),
                        color: Colors.blue,
                      ),
                      child: Center(
                          child: Text(
                            "${listcontent[index].title!}",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ))),
                ),
                Container(
                  margin: EdgeInsets.only(top:40),
                  padding: EdgeInsets.only(top: 6.0),
                 // height: 300-40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 25,
                            color: Colors.black12)
                      ]),
                  child: Column(
                    children: [
                      ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            '${listcontent[index].image!}',
                            height: 200.0,
                            width: 100.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(
                            "${listcontent[index].text!}"),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.event),
                          Text("${listcontent[index].date!}"),
                          Center(child:MaterialButton(onPressed: (){},child: Text("أكثر"))),
                          Icon(Icons.abc),
                          Text("New")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

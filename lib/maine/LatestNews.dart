import 'package:hospitalapp/src.dart';

class latestnews extends StatelessWidget {
  latestnews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sized = MediaQuery.of(context).size;
    return ImageSlideshow(
      height:320.0,
      onPageChanged: (value){},
      autoPlayInterval:3000,
      isLoop:true,
      children: [
      contentlatesnews(sized),
      contentlatesnews(sized),
      contentlatesnews(sized)
    ]);
  }
  Container contentlatesnews(Size sized) {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      height: 320.0,
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
                  width: sized.width,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(20.0),
                    color: Colors.blue,
                  ),
                  child: Center(
                      child: Text(
                    "عشرون عام من التأسيس",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))),
            ),
            Container(
              margin: EdgeInsets.only(top:40),
              padding: EdgeInsets.only(top: 6.0),
              height: 320-40,
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
                        'assets/images/one.jpg',
                        height: 200.0,
                        width: 100.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    title: Text(
                        "أطلقت قيادة مستشفى أطباء المنار مطلع هذا الأسبوع وهذا العام 2022م، حملة احتفائية واسعة بمناسبة مرور عشرون عاماً من التأسيس تحت شعار  مستمرون بالرعاية"),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.event),
                      Text("سبت26,2022 "),
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
    );
  }
}

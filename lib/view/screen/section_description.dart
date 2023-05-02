import 'package:hospitalapp/src.dart';

class sectionDescription extends StatelessWidget {
  int index;
  sectionDescription({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("وصف القسم"),
              ),
              body: ListView(children: [
                Padding(padding: EdgeInsets.only(top: 6)),
                Container(
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        homeicons.appareimage[index].image!,
                        width: 300,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                   homeicons.body[index],
                    style: TextStyle(fontSize: 14),
                  ),
                )
              ]))),
    );
  }
}

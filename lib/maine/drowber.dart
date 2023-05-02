import 'package:hospitalapp/src.dart';
class Drawers extends StatelessWidget {
  const Drawers({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: ColorApp.green,
                  // backgroundImage: AssetImage("images/6.jpg"),
                  radius: 70,
                ),
                accountName: Text("Abdualftah"),
                accountEmail: Text("22abdualftah@gmail.com"),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Home());
                },
                child: const ListTile(
                  title: Text("الصفحة الرئيسية"),
                  leading: Icon(Icons.home),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("عن المستشفى"),
                  leading: Icon(Icons.local_hospital),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(Gridview(sections: homeicons.appareimage));
                },
                child: const ListTile(
                  title: Text("الاقسام"),
                  leading: Icon(Icons.ev_station),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(viewall(
                    fltername: doctorimage,
                  ));
                },
                child: const ListTile(
                  title: Text("الطاقم الطبي"),
                  leading: Icon(Icons.medical_information),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(()=>latestnewss());
                },
                child: const ListTile(
                  title: Text("الاخبار"),
                  leading: Icon(Icons.event),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("الصور"),
                  leading: Icon(Icons.picture_in_picture),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text("الفيديو"),
                  leading: Icon(Icons.video_call),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => Employment());
                },
                child: const ListTile(
                  title: Text("التوظيف"),
                  leading: Icon(Icons.functions),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => reserve());
                },
                child: const ListTile(
                  title: Text("الحجز الالكتروني"),
                  leading: Icon(Icons.home_repair_service),
                ),
              ),
            ]),
      ),
    );
  }
}

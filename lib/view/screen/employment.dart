// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:hospitalapp/src.dart';
class Employment extends StatefulWidget {
  const Employment({super.key});

  @override
  State<Employment> createState() => _EmploymentState();
}

class _EmploymentState extends State<Employment> {
  bool onselect = false;
  late var result;
  //////////////////////////getfile
  Future<File?> pickerfile() async {
    result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ["pdf"]);
    if (result == null)
      return null;
    else {
      setState(() {
        onselect = true;
      });
      return File(result.paths.first!);
    }
  }

  //////////////////////
////////////////////uploadfilet
  void _upload(filepathe) {
    String filename = basename(filepathe);
    print("file base name${filename}");
    try {
    } catch (e) {}
  }

//////////////////
  final List<String> itemss = [
    'الباطنية',
    'العيون',
    'المخ والاعصاب',
    'العمليات',
  ];
  String? selectedValues;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          title: Text("نموذج التوظيف",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          child: Container(
            margin: EdgeInsets.only(top: 00.0),
            color: ColorApp.red,
            child: Stack(children: [
              Container(
                  height: 60.0,
                  width: double.infinity,
                  color: ColorApp.blue,
                  padding: EdgeInsets.all(8.0),
                  child: Text("نموذج التقديم على وظيفة",
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold))),
              Container(
                margin: EdgeInsets.only(top: 60.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Form(
                    child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: CustFormField(
                              labelText: "الاسم الثلاثي",
                              hintText: "الاسم الثلاثي",
                              iconData: Icons.person),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: CustFormField(
                            labelText: "البريد الالكتروني",
                            hintText: "البريد الاكتروني",
                            iconData: Icons.email,
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: CustFormField(
                            labelText: "رقم الهاتف",
                            hintText: "رقم الهاتف",
                            iconData: Icons.phone_android,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 8),
                          child: DropdownButtonHideUnderline(
                            child: Container(
                              width: double.infinity,
                              child: DropdownButton2(
                                hint: Text("اختر الوظيفة"),
                                items: itemss.map((e) => DropdownMenuItem<String>(
                                  value: e,
                                  child: Text(
                                    e,style: TextStyle(fontSize: 14),
                                  ))).toList(),
                                  value: selectedValues,
                                onChanged: ((value) {
                                  setState(() {
                                    selectedValues = value as String;
                                  });
                                }),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              pickerfile();
                            },
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8),
                              decoration: BoxDecoration(
                                  border: Border.all(color: ColorApp.black),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Center(
                                child: onselect
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.picture_as_pdf),
                                          Text("${result.paths.first!}")
                                        ],
                                      )
                                    : Text("إختر ملف السيرة الذاتية الخاصة بك ",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: ColorApp.black)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8),
                              decoration: BoxDecoration(
                                  color: Colors.amber[900],
                                  // border:Border.all(color:ColorApp.black),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Center(
                                child: Text("إرسال",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: ColorApp.white)),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                )),
              )
            ]),
          ),
        ),
      )),
    );
  }
}

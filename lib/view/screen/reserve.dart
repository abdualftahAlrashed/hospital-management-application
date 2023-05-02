import "package:hospitalapp/src.dart";

// ignore: camel_case_types
class reserve extends StatefulWidget {
  const reserve({super.key});
  @override
  State<reserve> createState() => _reserveState();
}

class _reserveState extends State<reserve> {
  late int conrntSteps = 0;
  // final List<String> items = doctors.cast<String>();

  //  [
  //   'احمد',
  //   'سعيد',
  //   'محمد',
  //   'نواف',
  // ];
  final List<String> itemss = [
    'الباطنية',
    'العيون',
    'المخ والاعصاب',
    'العمليات',
  ];
  String? selectedValues;
  String? selectedValue;
  //////////////////////////
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  GlobalKey<FormState> _globalKeyname = GlobalKey<FormState>();
  late TextEditingController _controller;
  String _valuechange = '';
  String _valueTovlidata = '';
  String _valueSave = '';
  bool sine = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController(text: DateTime.now().toString());
    _getvalue();
  }

  Future<void> _getvalue() async {
    await Future.delayed((const Duration(seconds: 3)));
    _controller.text = "2023-28-4 14:30";
  }

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        title: const Text("القسم"),
        isActive: conrntSteps == 0,
        state: StepState.indexed,
        content: bookingmedical(),
      ),
      Step(
          title:Text("طرق الدفع"),
          isActive: conrntSteps==1,
          state: StepState.indexed,
          content:pyment(context),
      ),
      Step(
        title:Text("التفاصيل "),
        isActive: conrntSteps==2,
        state: StepState.indexed,
        content:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading:ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/images/d1.jpg",fit:BoxFit.fill),
                ),
                title:Text("ahmed ali"),
              ),
              SizedBox(height:15.0,),
              ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child:
                        Image.asset("assets/images/p4.jpg", fit: BoxFit.fill),
                  ),
                  title: Text("العيون"),
                ),
              SizedBox(height:15.0),
              Row(
                children: [
                  Expanded(
                    
                    child: ListTile(
                      leading:Icon(Icons.person,size:35,),
                      title: Text("احمد سعيد "),
                    ),
                  ),
                  Expanded(child: Text("ggg"))
                ],
              ),
              SizedBox(height:15.0,),
              Row(
                children: [
                  Expanded(
                    
                      child: ListTile(
                        leading: Icon(
                          Icons.event,
                          size: 35,
                        ),
                        title: Text(
                          "التاريخ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  Expanded(child: Text("5/1/2023 ",style: TextStyle(fontSize:22,fontWeight:FontWeight.bold),))
                ],
              ),
              SizedBox(height:15.0,),
              Row(
                  children: [
                    Expanded(
                      
                      child: ListTile(
                        leading: Icon(
                          Icons.access_time,
                          size: 35,
                        ),
                        title: Text(
                          "الوقت",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                        child:  Text(
                      "7:50 م",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )
                    )
                  ],
                ),
              SizedBox(height:15.0),
              Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.money,
                          size: 35,
                        ),
                        title: Text(
                          "سعر الحجز",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "3000ريال",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ))
                  ],
                ),
            ],
          ),
        ) 
      )
    ];
    return SafeArea(
        child: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Theme(
              data: ThemeData.light(),
              child: Stepper(
                steps: steps,
                type: StepperType.horizontal,
                currentStep: conrntSteps,
                onStepTapped: (step) => setState(() {
                  conrntSteps = step;
                  sine = conrntSteps == steps.length - 1;
                }),
              )),
        ),
        bottomSheet: sine
            ? Container(
                padding: const EdgeInsets.only(bottom: 20),
                height: 80,
                child: Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                  color: Colors.green, width: 2)),
                          primary: Colors.white),
                      onPressed: () async {},
                      child: const Text(
                        "reserve",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                ),
              )
            : Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          if (conrntSteps > 0) {
                            setState(() {
                              conrntSteps -= 1;
                            });
                          } else {
                            setState(() {
                              conrntSteps = 0;
                            });
                          }
                        },
                        child: const Text(
                          "cancel",
                          style: TextStyle(fontSize: 20),
                        )),
                    TextButton(
                        onPressed: () {
                          if (conrntSteps < steps.length - 1) {
                            setState(() {
                              conrntSteps += 1;
                            });
                          } else {
                            setState(() {
                              sine = conrntSteps == steps.length - 1;
                            });
                          }
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                )),
      ),
    ));
  }

  Column bookingmedical() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              width: double.infinity,
              child: Text("القسم",
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          SizedBox(
            height: 4,
          ),
          Center(
            child: DropdownButtonHideUnderline(
              child: Container(
                width: double.infinity,
                child: DropdownButton2(
                  hint: Text('حدد القسم '),
                  items:itemss.map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e,style: TextStyle(fontSize: 14),))).toList(),
                  value: selectedValues,
                  onChanged: (value) {
                    setState(() {
                      selectedValues = value as String;
                    });
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
              width: double.infinity,
              child: Text("الاطباء ",
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Center(
            child: DropdownButtonHideUnderline(
              child: Container(
                  width: double.infinity,
                  child: DropdownButton2(
                      hint: Text("اخترالطبيب "),
                      items: doctors.map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e,style: TextStyle(fontSize: 14),))).toList(),
                      value: selectedValue,
                      onChanged: (Value) {
                        setState(() {
                          selectedValue = Value as String;
                        });
                      }
                      )
                      ),
            ),
          ),
          SizedBox(height:4),
          Container(
              width: double.infinity,
              child: Text("التاريخ",
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                      SizedBox(height:4,),
           DateTimePicker(
            type: DateTimePickerType.date,
            dateMask: 'd MMM , yyyy',
            controller: _controller,
            firstDate: DateTime(1999),
            lastDate: DateTime(2025),
            icon: const Icon(Icons.event),
            dateLabelText: "Data",
            selectableDayPredicate: (data) {
              if (data.weekday == 6 || data.weekday == 7) {
                return false;
              }
              return true;
            },
            onChanged: ((value) => setState(() {
                  _valuechange = value;
                })),
            validator: (value) {
              setState(() => _valueTovlidata = value ?? '');
              return null;
            },
            onSaved: (val) => setState(() => _valueSave = val ?? ''),
          ),
          SizedBox(height:20,),
          CustFormField(
            labelText: "اسم المريض",
            hintText: "إسم المريض",
            iconData:Icons.personal_injury_outlined
            ),
            SizedBox(height:20,),
            Divider(),
            TextFormField(
              keyboardType:TextInputType.number,
              textInputAction: TextInputAction.next ,
              decoration: InputDecoration(
                border:OutlineInputBorder(borderSide:BorderSide(color:ColorApp.black),
                borderRadius:BorderRadius.circular(30)
                ) ,
                label:Text("عمر المريض",
                  style: TextStyle(fontSize: 20),
                ),
                suffixIcon:Icon(Icons.person)

              ),
            ),
            SizedBox(height:20,),
            TextFormField(
              decoration:InputDecoration(
                border:OutlineInputBorder(borderSide:BorderSide(color:ColorApp.black),
                borderRadius:BorderRadius.circular(30)
                ),
                label:Text("رقم هاتف المريض",style:TextStyle(fontSize:20),
                ),
               suffixIcon:Icon(Icons.phone) 

              ),
            ),
            SizedBox(height:20,),
            TextFormField(
              decoration: InputDecoration(
                border:OutlineInputBorder(borderSide:BorderSide(color:ColorApp.black),
                borderRadius:BorderRadius.circular(30)) ,
                label:Text("عنوان المريض",
                  style: TextStyle(fontSize: 20),
                ),
                suffixIcon:Icon(Icons.location_city)

              ),
            )
        ],
      );
  }

  Container pyment(BuildContext context) {
    return Container(
          child:Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("يرجى تحديد طريقة الدفع ",style:TextStyle(fontSize:30,fontWeight:FontWeight.bold),),
                SizedBox(height:25),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width:250,
                    child:Stack(
                      children:[
                        Container(
                          color:Colors.blue,
                          width:200,
                          height:100,
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("الدفع من خلال بطاقة الانتماء",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,color:ColorApp.white)),
                          )
                        ),
                        Positioned(
                          left:20.0,
                          top:20.0,
                          child: Container(
                            height:60,
                            width: 50,
                            decoration:BoxDecoration(
                              color:Colors.white,
                              shape:BoxShape.circle
                            )
                          ),
                        ),
                        Positioned(
                            left:25.0,
                            top: 25.0,
                            child: Icon(Icons.wallet,size:50,
                                color:Colors.black))
                      ]
                    )
                  ),
                ),
                SizedBox(height:40.0),
                Divider(),
                GestureDetector(
                  onTap:(){},
                  child: Container(
                      width:250,
                      child:Stack(
                          children:[
                            Container(
                                color:Color(0xff535456),
                                width:200,
                                height:100,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("الدفع من خلال حسابي في البنك",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,color:ColorApp.white)),
                                )
                            ),
                            Positioned(
                              left:20.0,
                              top:20.0,
                              child: Container(
                                  height:60,
                                  width: 50,
                                  decoration:BoxDecoration(
                                      color:Colors.white,
                                      shape:BoxShape.circle
                                  )
                              ),
                            ),
                            Positioned(
                                left:25.0,
                                top: 25.0,
                                child: Icon(Icons.account_box
                                    ,size:50,

                                )
                            )
                          ]
                      )
                  ),
                ),
                SizedBox(height:25.0),
                Divider(),
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder:(BuildContext context)=>AlertDialog(
                          title:const Text("يرجى ادخال رمز التاكيد"),
                          content:Padding(
                            padding: const EdgeInsets.symmetric(horizontal:25.0),
                            child: Container(
                              decoration:BoxDecoration(
                                  color:ColorApp.white,
                                  borderRadius: BorderRadius.circular(12.0)
                              ),
                              child:Padding(
                                padding:EdgeInsets.symmetric(horizontal:20.0),
                                child:TextField(
                                  decoration:InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "يرجى ادخال الرقم الذي ارسل اليك"
                                  ),
                                ),
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child:Text("ترادجع")),
                            TextButton(onPressed: (){}, child:Text("تم"))
                          ],

                        )
                    );
                  },
                  child: Container(
                      width:250,
                      child:Stack(
                          children:[
                            Container(
                                color:Colors.blue,
                                width:200,
                                height:100,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("الدفع نقدا للبنك",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold)),
                                )
                            ),
                            Positioned(
                              left:20.0,
                              top:20.0,
                              child: Container(
                                  height:60,
                                  width: 50,
                                  decoration:BoxDecoration(
                                      color:Colors.white,
                                      shape:BoxShape.circle
                                  )
                              ),
                            ),
                            Positioned(
                                left:25.0,
                                top: 25.0,
                                child: Icon(Icons.wallet,size:50,
                                    color:Colors.black))
                          ]
                      )
                  ),
                )
              ]
            )

          )
        );
  }

}

// DropdownButton2(
//                 hint: Text(
//                   'حدد الطبيب ',
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Theme.of(context).hintColor,
//                   ),
//                 ),
//                 items: doctors
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(fontSize: 20),
//                           ),
//                         ))
//                     .toList(),
//                 value: selectedValue,
//                 onChanged: (value) {
//                   setState(() {
//                     selectedValue = value;
//                   });
//                 },
//                 buttonHeight: 40,
//                 buttonWidth: 140,
//                 itemHeight: 50,
//               ),
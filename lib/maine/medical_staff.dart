import 'package:flutter/gestures.dart';

import '../src.dart';
class medicalStaff extends StatelessWidget {
  const medicalStaff({super.key});
void gotopage() {
    Get.to(viewall(
      fltername: doctorimage,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  countenttap(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  //////////////////////rowscrol
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ...List.generate(
                                          doctorimage.length,
                                          (index) => contantDoctors(index),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              );
  }

  Container contantDoctors(int index) {
    return Container(
                                          margin: const EdgeInsets.only(
                                              right: 16),
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.asset(
                                                  doctorimage[index].image!,
                                                  height: 80,
                                                  width: 80,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                doctorimage[index].body!,
                                                style: const TextStyle(
                                                    fontSize: 15),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Get.to(dicription_doctor(
                                                      name: doctorimage[index]
                                                          .body!,
                                                      index: index,
                                                    ));
                                                  },
                                                  child: const Text("اكثر"))
                                            ],
                                          ),
                                        );
  }

  Row countenttap() {
    return Row(
// ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      "الكادر الطبي",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(child: Container()),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: "عرض الكل",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: ColorApp.black),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = gotopage,
                                      ),
                                      WidgetSpan(
                                        child: const Icon(
                                          Icons.keyboard_arrow_left,
                                          size: 25,
                                        ),
                                      )
                                    ]))
                                  ],
                                );
  }
}
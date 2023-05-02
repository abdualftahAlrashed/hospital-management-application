import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hospitalapp/controller/onboardincontroller.dart';

import '../../core/constant/colorapp.dart';
import '../../model/datasource/static/static.dart';

class WidgetOnBoardingCircle extends StatelessWidget {
  const WidgetOnBoardingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(builder: (controller)=>Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ...List.generate(OnBoardingModelList.length,
                   (index) => AnimatedContainer(duration:const Duration(microseconds: 900)
                   ,width: controller.currentpage == index ? 25 : 12,
                   height: 11,
                   margin:const EdgeInsets.only(right: 5),
                   
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorApp.green
                   ),
                   ))
                ],));
  }
}
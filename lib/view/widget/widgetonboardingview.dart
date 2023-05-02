import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:hospitalapp/controller/onboardincontroller.dart';
import 'package:hospitalapp/core/constant/fontname.dart';

import '../../model/datasource/static/static.dart';


class WidgetOnBoardingView extends GetView<OnBoardingController> {
  const WidgetOnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return PageView.builder(
                controller: controller.pagecontroller,
                onPageChanged: (val){
                  controller.onChange(val);
                 
                },
                itemCount: OnBoardingModelList.length,
                itemBuilder:(context,i){
                return Column(
                  children: [
                        // Image.asset(OnBoardingModelList[i].image!),
                        Image(image: AssetImage(OnBoardingModelList[i].image!),height:200,),
                        Container(
                          margin:const EdgeInsets.symmetric(vertical: 20),
                          alignment: Alignment.center,
                          child: Text(OnBoardingModelList[i].title!,
                          style:const TextStyle(fontSize: 28,fontFamily:"myFont"),textAlign: TextAlign.center,)),
                        Container(
                          padding: EdgeInsets.only(bottom:10),
                          alignment: Alignment.center,
                          child: Text(OnBoardingModelList[i].body!,
                          style:const TextStyle(fontSize: 20,fontFamily:"myFont"),textAlign: TextAlign.center,)),
                  ],
                );
              });
  }
}
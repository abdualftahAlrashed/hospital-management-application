import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hospitalapp/core/constant/routes.dart';
import 'package:hospitalapp/model/datasource/static/static.dart';
import 'package:hospitalapp/view/screen/login.dart';

abstract class OnBoardinAbstract extends GetxController{
next();
onChange(int index);
}
class OnBoardingController extends OnBoardinAbstract{
  late PageController pagecontroller;
  int currentpage = 0;
  @override
  next() {
  currentpage++;
  if(currentpage == OnBoardingModelList.length){
    Get.offAll(
      transition: Transition.upToDown,
      curve: Curves.easeIn,
      duration:const Duration(microseconds: 90),
      ()=>const Login());
  }
  else{
     pagecontroller.animateToPage(currentpage, duration:const Duration(microseconds: 900), curve: Curves.fastLinearToSlowEaseIn);
  }
  
  }

  @override
  onChange(int index) {
    currentpage = index;
    update();
  }
@override
  void onInit() {
   pagecontroller = PageController();
    super.onInit();
  }
}
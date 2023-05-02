import 'package:hospitalapp/src.dart';
class SplashScreenViewModel extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit(){
    animationInitilization();
    super.onInit();
  }
 @override
 void onReady(){
  super.onReady();
  toAnotherPage();
 }
  animationInitilization() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut)
            .obs
            .value;
    animation.addListener(() => update());
    animationController.forward();
    // await toAnotherPage();
  }
  toAnotherPage() async{
   await Future.delayed(const Duration(seconds: 8),(){
    Get.to(
      transition: Transition.size,
      curve: Curves.easeIn,
     duration:const Duration(milliseconds:1600),
      ()=>const OnBoarding());
   }) ;
  
  }
}
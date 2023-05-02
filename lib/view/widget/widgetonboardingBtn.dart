import 'package:hospitalapp/src.dart';
class WidgetOnBoardingBtn extends GetView<OnBoardingController> {
  const WidgetOnBoardingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustButtonElv(onPressed: (){
                      controller.next();
                    }, text: "التـالي",
                    width: 150,
                    height: 50,
                     fontName: "myFont",
                    backgroundColor: ColorApp.green,
                    textColor:ColorApp.white ,fontSize: 22),
                    CustButtonElv(onPressed: (){
                      Get.to(
                        transition: Transition.downToUp,
                        curve: Curves.easeIn,
                        ()=>const Login());
                    }, text: "تخطي",
                    width: 150,
                    fontName: "myFont",
                    height: 50,
                    backgroundColor: ColorApp.green,
                    textColor:ColorApp.white ,fontSize: 22,),

                  ],
                );
  }
}
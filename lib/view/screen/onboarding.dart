import 'package:hospitalapp/src.dart';



class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Column(
           children: [
            const Expanded(
              flex: 6,
              child: WidgetOnBoardingView(),
            ),
            Expanded(
              flex: 1,
              child: Column(
              children:const [
                WidgetOnBoardingCircle()
                ,
                Spacer(flex: 2,),
                WidgetOnBoardingBtn()
                ,
                Spacer(flex: 1,)
              ],
            ))
           ],
          ),
        ),
      ));
  }
}
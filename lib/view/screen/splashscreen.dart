import 'package:hospitalapp/src.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashScreenViewModel>(
        init: SplashScreenViewModel(),
        builder: (controller) {
          return Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Image(image:const AssetImage(ImageAssets.splashscreen),
                  width: Get.width,
                  height: Get.height,
                  fit: BoxFit.cover,
                  )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
import 'package:hospitalapp/src.dart';

List<GetPage<dynamic>>? getRoutesPages = [
  GetPage(name: AppRoutes.splashscreen, page: ()=>  SplashScreen()),
  GetPage(name: AppRoutes.boardingPage, page: ()=> const OnBoarding()),
  GetPage(name: AppRoutes.loginPage, page: ()=> const Login()),
  GetPage(name: AppRoutes.logupPage, page: ()=> const SignUp()),
  GetPage(name: AppRoutes.homePage, page: ()=> const Home()),
  GetPage(name: AppRoutes.notifacation, page: () => const Notifecation()),
];
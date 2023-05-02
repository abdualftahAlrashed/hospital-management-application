import 'package:hospitalapp/src.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: ColorApp.green,
            body: ListView(
              children: [
                Container(
                    width: double.infinity,
                    alignment: Alignment.bottomCenter,
                    // color: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    height: 200,
                    child: Stack(
                      children: [
                        const Positioned(
                            top: 8,
                            right: 4,
                            child: Text(
                              "تسجيل ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "myFont",
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            child: CustomPaint(
                          size: Size(size.width - 50, 150),
                          painter: CustPainting(),
                        )),
                        const Positioned(
                            right: 4,
                            bottom: 11,
                            child: Text(
                              "الدخول",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "myFont",
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: size.height - 235,
                  // alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Form(
                      child: Center(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        const CustFormField(
                          labelText: "البريد الالكتروني",
                          hintText: "ادخل البريد الالكتروني",
                          iconData: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                          fontName: "myFont",
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const CustFormField(
                          labelText: "كلمة المرور",
                          hintText: "ادخل  كلمة المرور",
                          iconData: Icons.lock_outlined,
                          obscure: true,
                          keyboardType: TextInputType.text,
                          fontName: "myFont",
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                            child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //  const Text("هل نسيت كلمة المرور؟",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                "هل نسيت كلمة المرور؟",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.red),
                              ),
                            ),
                          ],
                        )),
                        const SizedBox(
                          height: 28,
                        ),
                        CustButtonElv(
                          onPressed: () {
                            Get.to(
                                transition: Transition.upToDown,
                                curve: Curves.easeInOut,
                                () => const Home());
                          },
                          text: "دخول",
                          width: 290,
                          height: 57,
                          fontName: "myFont",
                          backgroundColor: Color(0xff00BC77),
                          fontSize: 26,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Container(
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "لا أمتلك حساب",
                                  style: TextStyle(
                                      fontFamily: "myFont", fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.to(
                                        transition:
                                            Transition.rightToLeftWithFade,
                                        curve: Curves.easeIn,
                                        duration:
                                            const Duration(microseconds: 1000),
                                        () => const SignUp());
                                  },
                                  child: const Text(
                                    "إنشاء حساب",
                                    style: TextStyle(
                                        fontFamily: "myFont",
                                        fontSize: 15,
                                        color: ColorApp.green),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )),
                )
              ],
            )),
      ),
    );
  }
}

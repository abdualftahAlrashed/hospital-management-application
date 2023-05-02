import 'package:hospitalapp/core/constant/fontname.dart';
import 'package:hospitalapp/src.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Color(0xff00BC77),
          body: ListView(
                    children: [
                      const SizedBox(height: 7,),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.bottomCenter,
                        // color: Colors.blueGrey,
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        height: 160,
                        child:Stack(
                          children: [
                           const Positioned(
                            top: 10,
                            right: -2,
                            child: Text("إضــافة",style: TextStyle(color: Colors.white,fontFamily: "myFont",fontSize: 34,fontWeight: FontWeight.bold,),)),
                            Positioned(child: CustomPaint(
                          size: Size(size.width - 50,136),
                          painter: CustPainting(),
                        )),
                       const Positioned(
                            right: -3,
                          bottom: 10,
                          child: Text("مستخدم",style: TextStyle(color: Colors.white,fontFamily: "myFont",fontSize: 30,fontWeight: FontWeight.bold),))
                          ],
                        )
                        
                      ),
                    const SizedBox(height: 6,),
                    Container(
                      width: double.infinity,
                      height: size.height -150,
                      padding:const EdgeInsets.symmetric(horizontal: 25,vertical: 15 ),
                      decoration:const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)
                        )
                      ),
                      child: 
                      Form(child: 
                      Center(
                        child: Column(
                          children: [
                            Container(
                              child: const CustFormField(labelText: "اسم المستخدم",
                              hintText: "اسم المستخدم",
                              iconData: Icons.person,
                              keyboardType:TextInputType.text,
                              fontName: "myFont",
                              ),
                            ),
                           const SizedBox(height: 30,),
                           Container(
                             child: const CustFormField(labelText: "البريد الالكتروني",
                              hintText: "ادخل البريد الالكتروني",
                              iconData: Icons.email_outlined,
                              keyboardType:TextInputType.emailAddress,
                              fontName: "myFont",
                              ),
                           ),
                           const SizedBox(height: 20,),
                           Container(
                             child: const CustFormField(labelText: "رقم الهاتف",
                              hintText: "رقم الهاتف",
                              iconData: Icons.phone_android,
                              keyboardType:TextInputType.number,
                              fontName: "myFont",
                              ),
                           ),
                           const SizedBox(height: 30,),
                           Container(
                             child: const   CustFormField(labelText: "كلمة المرور",
                              hintText: "ادخل  كلمة المرور",
                              iconData: Icons.lock_outlined,
                              obscure:true,
                              keyboardType:TextInputType.text,
                              fontName: "myFont",
                              ),
                           ),
                            const SizedBox(height: 30,),
                           Container(
                             child: const   CustFormField(labelText: " تأكيد كلمة المرور",
                              hintText: "تأكيد  كلمة المرور",
                              iconData: Icons.lock_outlined,
                              obscure:true,
                              keyboardType:TextInputType.text,
                              fontName: "myFont",
                              ),
                           ),
                           const SizedBox(height: 15,),
                         
                                Container(
                                  child: CustButtonElv(onPressed: (){},text: "تسجيل",
                                  width: 290,
                                  height: 57,
                                  fontName: "myFont",
                                  backgroundColor:Color(0xff00BC77),
                                  fontSize: 26,),
                                ),
                                const SizedBox(height: 20,),
                               Spacer(flex: 2,),
                                Container(
                                  alignment: Alignment.bottomCenter,
                                  child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                           const Text(" أمتلك حساب",style: TextStyle(fontSize: 18),textAlign: TextAlign.center,),
                                                          const SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){
                                    Get.to(
                                      transition:Transition.leftToRight ,
                                      curve: Curves.easeIn,
                                      duration:const Duration(microseconds:1000 ),
                                      ()=> const Login());
                                  },
                                  child:const Text("تسجيل الدخول",style: TextStyle(fontFamily: "myFont",fontSize: 15,color: ColorApp.green),),
                                ),
                                
                                                          ],
                                                        )),
                          ],
                        ),
                      )),
                    )
                    ],
          )
        ),
      ),
    );
  }
}
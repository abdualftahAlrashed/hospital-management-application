import '../src.dart';
class Marquees extends StatelessWidget {
  const Marquees({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(vertical: 4),
      color: ColorApp.green,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Marquee(
        textDirection: TextDirection.ltr,
        text:
            "نحن في مستشفى اطباء المنار نركز على تقديم مجموعة واسعة من الخدمات الطبية الحديثة والمتطورة ذات الجودة المتميزة ، والتي تتـيـح لنا تحسين صحة المجتمعات التي نخدمها بكل محبة وتفهم لإحتياجات المرضى وعائلاتهم . حيث أننا في مستشفى اطباء المنار نتميز بكوننا المستشفى الوحيد الخاص بالمحافظة الذي يمتلك قسم العناية المركزة والجراحة بالمناظير والتفتيت بافضل كادر طبي متخصص وأجهزة تقنية حديثة , فنحن كمستشفى طبي متميز نــقدم الرعاية الطبية الكاملة ، ونطمح أن نكون الاختيار الأول للناس بين المستشفيات في محافظة إب وأن نتميز بتحقيق رضاء مرضانا، وأن نوفر أفضل جودة ممكنة طبياً وخدماتياً، بالإضافة إلى أفضل الأطباء والمتخصصين والموظفين, حيث أننا نسعى لتغيير الخدمات الطبية في المحافظـــة بطريقة تؤثر إيجابياً في حياة الناس . كما نعمل معــاً، واضعين المريض في أعلى جدول أعمالنا، حيث يكون الاهتمام بالفرد والتمسك بالقيم والأخلاق التي تتجسد في الصدق والإخلاص في العمل ومواصلة التعلم والاستمرار في العمل بجهد لتحسين مهاراتنا وبرامجنا وخدماتنا الطبية ، هو ما يميّز مستشفى اطباء المنار ويحدد مكانته المرموقة التي يتمتع بها اليوم",
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        style: const TextStyle(
            fontSize: 25, color: ColorApp.white, fontWeight: FontWeight.bold),
        startPadding: 10.0,
        blankSpace: 20.0,
        velocity: 40.0,
        pauseAfterRound: const Duration(seconds: 1),
        accelerationDuration: const Duration(seconds: 1),
        accelerationCurve: Curves.elasticIn,
        decelerationDuration: const Duration(milliseconds: 500),
        decelerationCurve: Curves.easeInCubic,
      ),
    );
  }
}

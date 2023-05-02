import '../src.dart';

class Graidlayout extends StatelessWidget {
  const Graidlayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        content(
          context: context,
          image: 'assets/images/about.jpg',
          title: "رسالتنا",
          content:  '''
تقديم الخدمة الطبية وفق أحدث معايير الجودة العالمية بكفاءة متميزة من
 خلال كوادر مؤهلة تواكب التطور العلمي في الخدمة المقدمة للمريض .
''',
        ),
        SizedBox(height:5,),
        content(
          context: context,
          image: 'assets/images/about-goal.jpg',
          title: "قيمنـــا",
          content: '''
الإنسانية – المصداقية – الإبداع - المعرفة القائمة على أسس علمية -
 التطوير المستمر - الإلتزام بأعلى معايير الجودة - المشاركة والعمل بروح 
 الفريق الواحد
''',
        ),
      ],
    );
  }

  Container content(
      {required BuildContext context,
      required String image,
      required String title,
      required String content}) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              image,
              height: 200,
              width: MediaQuery.of(context).size.width - 3,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
           content,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

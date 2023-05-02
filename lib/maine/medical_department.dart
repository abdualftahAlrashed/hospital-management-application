import 'package:hospitalapp/src.dart';
class medicalDepartments extends StatelessWidget {
  const medicalDepartments({super.key});
  void gotgraid() {
    Get.to(Gridview(sections: homeicons.appareimage));
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        section_Tap(),
        const SizedBox(
          height: 10,
        ),
        //////////////////////rowscrol
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...List.generate(
                homeicons.appareimage.length,
                (index) => section_contents(index),
              )
            ],
          ),
        ),
      ],
    );
  }

  Container section_contents(int index) {
    return Container(
                margin: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        homeicons.appareimage[index].image!,
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      homeicons.appareimage[index].body!,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Get.to(sectionDescription(
                            index: index,
                          ));
                        },
                        child: const Text("اكثر"))
                  ],
                ),
              );
  }

  Row section_Tap() {
    return Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "الاقسام",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Expanded(child: Container()),
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "عرض الكل",
              style: TextStyle(fontSize: 18, color: ColorApp.black),
              recognizer: TapGestureRecognizer()..onTap = gotgraid,
            ),
            WidgetSpan(
              child: const Icon(
                Icons.keyboard_arrow_left,
                size: 25,
              ),
            )
          ]))
        ],
      );
  }
}

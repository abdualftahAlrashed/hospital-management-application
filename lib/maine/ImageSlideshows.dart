import '../src.dart';

class ImageSlideshows extends StatelessWidget {
  const ImageSlideshows({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ImageSlideshow(
          indicatorColor: ColorApp.green,
          onPageChanged: (value) {
            //debugPrint('Page changed: $value');
          },
          autoPlayInterval: 3000,
          isLoop: true,
          children: [
            ...List.generate(
              onslidersimages.length,
              (index) => card_doctors(index),
            )
          ]
          ),
    );
  }

  Card card_doctors(int index) {
    return Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 0,
              margin: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                onslidersimages[index].image!,
                fit: BoxFit.fill,
              ),
            );
  }
}

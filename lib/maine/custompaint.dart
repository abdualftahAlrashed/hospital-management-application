import 'package:hospitalapp/src.dart';

class custompaintsbottom extends StatelessWidget {
  const custompaintsbottom({
    Key? key,
    required this.size,
    required this.glopalekey,
  }) : super(key: key);

  final Size size;
  final GlobalKey<ScaffoldState> glopalekey;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        width: size.width,
        height: 80,
        color: Colors.white,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: pointers(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                onPressed: () {
                  glopalekey.currentState?.openDrawer();
                },
                backgroundColor: Colors.orange,
                child: Icon(Icons.shopping_basket),
                elevation: 0.1,
              ),
            ),
            Container(
              width: size.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(() => Home());
                      },
                      icon: Icon(Icons.home)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.restaurant_menu)),
                  Container(
                    width: size.width * 0.20,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
                  IconButton(
                      onPressed: () {
                        Get.to(() => Notifecation());
                      },
                      icon: Icon(Icons.notifications))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class pointers extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paints = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path0 = Path();
    path0.moveTo(0, 20);
    path0.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path0.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path0.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path0.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path0.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    // path0.lineTo(0, 20);
    path0.close();
    canvas.drawShadow(path0, Colors.blue, 5, true);
    canvas.drawPath(path0, paints);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

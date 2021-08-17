import 'package:flutter/material.dart';


class WelcomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 700,
      ),
      painter: WelcomePainter(),
    );
  }
}

class WelcomePainter extends CustomPainter{

  Color colorThree = Color.fromRGBO(1,0,53,1);
  Color colorTwo = Color.fromRGBO(255,110,78,1);
  //Color colorTwo = Color.fromRGBO(1,0,53,1);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();


    path = Path();
    path.lineTo(0, size.height * 0.62);
    path.quadraticBezierTo(size.width *0.16, size.height * 0.48, size.width * 0.47, size.height * 0.44);
    path.quadraticBezierTo(size.width * 0.78, size.height * 0.4, size.width, size.height * 0.22); 

    path.lineTo(size.width,0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

  }


  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}
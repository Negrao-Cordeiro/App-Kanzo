/*import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Background extends StatelessWidget {
  final Widget child;
  final double height;

  const Background({Key? key, required this.child, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          CustomPaint(
            size: Size(size.width, height),
            painter: BGCustomPainter(),
          )
        ],
      ),
    );
  }
}

class BGCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.9998692, 0);
    path.cubicTo(
        size.width * 0.9998692,
        0,
        size.width * 1.000167,
        size.height * 0.4160673,
        size.width * 0.9998692,
        size.height * 0.4170404);

    path.cubicTo(
        size.width * 0.9537214,
        size.height * 0.4932735,
        size.width * 0.9383388,
        size.height * 0.5448430,
        size.width * 0.8127142,
        size.height * 0.6143498);

    path.cubicTo(
        size.width * 0.6870896,
        size.height * 0.6838565,
        size.width * 0.4542483,
        size.height * 0.6337220,
        size.width * 0.30400372,
        size.height * 0.788341);
    path.cubicTo(size.width * 0.1538260, size.height * 0.9439462, 0,
        size.height, 0, size.height);
    //path.cubicTo(size.width * 0.1538260, size.height * 9439462, 0, size.height,
    // 0, size.height);

    path.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.shader = ui.Gradient.linear(
        Offset(size.width * 0.055000000, size.height * 0.05400000),
        Offset(size.width * 0.05460000, size.height * 0.93900000), [
      const Color(0xFF00c6fb).withOpacity(1),
      const Color(0xFF005bea).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawShadow(path, Colors.black, 3.0, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BGCustomPainter oldDelegate) {
    return true;
  }

  @override
  bool shouldRebuildSemantics(BGCustomPainter oldDelegate) => false;
}
child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text('Hola,'),
                                Text('inicia a sessão,'),
                                Text('com a sua conta,')
                              ],
                            )),
                        Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/svg/kilombologo.svg',
                                    height: 130, width: 130, color: Colors.white),
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ))*/
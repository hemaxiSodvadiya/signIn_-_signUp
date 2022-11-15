
import 'package:flutter/cupertino.dart';
import 'dart:ui' as ui;


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.35), Offset(size.width, size.height * 0.35), [
      Color(0xffFFCB2B),
      Color(0xffF5820D),
    ], [
      0.00,
      1.00
    ]);

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.5000000);
    path0.cubicTo(
        size.width * 0.1120833,
        size.height * 0.4939286,
        size.width * 0.1137500,
        size.height * 0.3039286,
        size.width * 0.2516667,
        size.height * 0.3014286);
    path0.cubicTo(
        size.width * 0.3983333,
        size.height * 0.3146429,
        size.width * 0.4250000,
        size.height * 0.4953571,
        size.width * 0.4941667,
        size.height * 0.5242857);
    path0.cubicTo(
        size.width * 0.5716667,
        size.height * 0.5550000,
        size.width * 0.6033333,
        size.height * 0.3121429,
        size.width * 0.7475000,
        size.height * 0.3085714);
    path0.cubicTo(
        size.width * 0.9387500,
        size.height * 0.3064286,
        size.width * 0.9229167,
        size.height * 0.6292857,
        size.width,
        size.height * 0.7085714);
    path0.quadraticBezierTo(size.width, size.height * 0.5314286, size.width, 0);
    path0.lineTo(0, 0);
    path0.quadraticBezierTo(
        0, size.height * 0.1250000, 0, size.height * 0.5000000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.35), Offset(size.width, size.height * 0.35), [
      Color(0xffFFCB2B),
      Color(0xffF5820D),
    ], [
      0.00,
      1.00
    ]);

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.9485714);
    path0.cubicTo(
        size.width * 0.0675000,
        size.height * 0.8735714,
        size.width * 0.1058333,
        size.height * 0.6964286,
        size.width * 0.2216667,
        size.height * 0.6657143);
    path0.cubicTo(
        size.width * 0.3568750,
        size.height * 0.6696429,
        size.width * 0.3966667,
        size.height * 0.8660714,
        size.width * 0.5000000,
        size.height * 0.8642857);
    path0.cubicTo(
        size.width * 0.5725000,
        size.height * 0.8796429,
        size.width * 0.6285417,
        size.height * 0.7275000,
        size.width * 0.7500000,
        size.height * 0.7085714);
    path0.cubicTo(
        size.width * 0.8575000,
        size.height * 0.7275000,
        size.width * 0.9275000,
        size.height * 0.8967857,
        size.width,
        size.height * 0.8928571);
    path0.quadraticBezierTo(
        size.width, size.height * 0.9196429, size.width, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.9871429, 0, size.height * 0.9485714);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint0.shader = ui.Gradient.linear(
        Offset(0, size.height * 0.35), Offset(size.width, size.height * 0.35), [
      Color(0xffFFCB2B),
      Color(0xffF5820D),
    ], [
      0.00,
      1.00
    ]);

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.9028571);
    path0.cubicTo(
        size.width * 0.0675000,
        size.height * 0.8735714,
        size.width * 0.1258333,
        size.height * 0.6335714,
        size.width * 0.2275000,
        size.height * 0.6300000);
    path0.cubicTo(
        size.width * 0.3610417,
        size.height * 0.6439286,
        size.width * 0.3933333,
        size.height * 0.8446429,
        size.width * 0.5000000,
        size.height * 0.8557143);
    path0.cubicTo(
        size.width * 0.5725000,
        size.height * 0.8367857,
        size.width * 0.6260417,
        size.height * 0.6046429,
        size.width * 0.7550000,
        size.height * 0.6028571);
    path0.cubicTo(
        size.width * 0.9033333,
        size.height * 0.6132143,
        size.width * 0.9275000,
        size.height * 0.8967857,
        size.width,
        size.height * 0.8171429);
    path0.quadraticBezierTo(
        size.width, size.height * 0.9196429, size.width, size.height);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(
        0, size.height * 0.9871429, 0, size.height * 0.9028571);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

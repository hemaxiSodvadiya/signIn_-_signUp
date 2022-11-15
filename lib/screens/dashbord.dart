import 'package:flutter/material.dart';

import '../common/curve.dart';
import '../helper/firebasde_auth_helper.dart';

class DashBord extends StatefulWidget {
  const DashBord({Key? key}) : super(key: key);

  @override
  State<DashBord> createState() => _DashBordState();
}

class _DashBordState extends State<DashBord> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: 0.75,
                  child: CustomPaint(
                    size: Size(width, (width * 0.69).toDouble()),
                    //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ),
                CustomPaint(
                  size: Size(width, (width * 0.5833333333333334).toDouble()),
                  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 125,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 50,
                    color: Color(0xffFFCB2B),
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 125,
            ),
            Container(
              height: 160,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.75,
                    child: CustomPaint(
                      size:
                          Size(width, (width * 0.5833333333333334).toDouble()),
                      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter3(),
                    ),
                  ),
                  Opacity(
                    opacity: 1,
                    child: CustomPaint(
                      size: Size(width, (width * 0.58).toDouble()),
                      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter2(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

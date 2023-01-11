import 'package:flutter/material.dart';
import 'package:neo_nft/theme.dart';

class CustomButtonBorder extends StatelessWidget {
  CustomButtonBorder({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  double width;
  double height;
  Function()? onTap;
  String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width,
        height: height,
        child: CustomPaint(
          size: Size(
              width,
              (width * 0.14678899082568808)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomButton(),
          child: Center(
            child: Text(
              text,
              style: semiBoldTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}

class RPSCustomButton extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.04892966, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.6666667);
    path_0.lineTo(size.width * 0.9510703, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.3333333);
    path_0.lineTo(size.width * 0.04892966, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.003058104, size.height * 0.3419625);
    path_1.lineTo(size.width * 0.05019633, size.height * 0.02083333);
    path_1.lineTo(size.width * 0.9969419, size.height * 0.02083333);
    path_1.lineTo(size.width * 0.9969419, size.height * 0.6580375);
    path_1.lineTo(size.width * 0.9498043, size.height * 0.9791667);
    path_1.lineTo(size.width * 0.003058104, size.height * 0.9791667);
    path_1.lineTo(size.width * 0.003058104, size.height * 0.3419625);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.006116208;
    paint_1_stroke.color = cyanColor.withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

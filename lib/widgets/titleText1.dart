import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleText1 extends StatelessWidget {
  final String text;
  final Color color;
  const TitleText1({
    required this.text,
    this.color = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat-Bold',
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}

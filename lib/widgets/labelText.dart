import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:financial_app/lib_all.dart';

class LabelText extends StatelessWidget {
  final String text;
  final Color color;
  const LabelText({
    required this.text,
    this.color = klabelcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 14.sp,
        fontWeight: FontWeight.w200,
        color: color,
      ),
    );
  }
}

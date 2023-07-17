import 'package:financial_app/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NormalText2 extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const NormalText2({
    required this.text,
    this.color = kblack,
    this.size = 12,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: size.sp,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }
}

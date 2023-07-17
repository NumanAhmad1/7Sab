import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const.dart';

class NormalText3 extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const NormalText3({
    this.size= 16,
    required this.text,
    this.color = kgreen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Montserrat', fontSize: size.sp, color: color, ),);
  }
}
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/util_functions.dart';

class NormalText1 extends StatelessWidget {
  final String text;
  final Color color;
  final String localisation;
  const NormalText1({
    required this.text,
    this.localisation = 'en',
    this.color = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: Utils.getFontFamily(localisation),
        fontSize: 20.sp,
        fontWeight: FontWeight.w900,
        color: color,
      ),
    );
  }
}

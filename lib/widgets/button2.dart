import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/util_functions.dart';

class Button2 extends StatelessWidget {
  final String buttonText;
  final double height;
  final double width;
  String localisation = 'en';
  Button2({
    required this.buttonText,
    this.height = 40,
    this.width = 321,
    this.localisation = 'en',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // shadow color
            spreadRadius: 1, // spread radius
            blurRadius: 5, // blur radius
            offset: Offset(0, 5), // offset from the container
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontFamily: Utils.getFontFamily(localisation),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:financial_app/widgets/normalText1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const.dart';
import '../utils/util_functions.dart';

class Button1Text extends StatelessWidget {
  final String text;
  final Color color;
  final String fontFamily;
  const Button1Text({
    required this.text,
    required this.fontFamily,
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
        fontSize: 16.sp,
        fontWeight: FontWeight.w800,
        color: color,
      ),
    );
  }
}

class Button1 extends StatelessWidget {
  final String buttonText;
  final bool isIcon;
  final double height;
  final double width;
  final IconData icon;
  final String localisation;
  void Function() onTap;
  Button1({
    this.icon = Icons.login_rounded,
    required this.buttonText,
    required this.isIcon,
    this.height = 50,
    this.width = 321,
    this.localisation = 'en',
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [kprimarycolor1, kprimarycolor2],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), //color of shadow
              spreadRadius: 5, //spread radius
              blurRadius: 5, // blur radius
              offset: const Offset(0, 7),
            )
          ],
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button1Text(
                text: buttonText,
                color: Colors.white,
                fontFamily: Utils.getFontFamily(localisation, bold: true),
              ),
              SizedBox(
                width: 5.w,
              ),
              if (isIcon)
                Icon(
                  icon,
                  color: Colors.white,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

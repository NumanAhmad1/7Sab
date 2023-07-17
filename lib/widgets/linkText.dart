import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const.dart';

class LinkText extends StatelessWidget {
  final String text;
  final Color color;
  Function() callback;
  final List<InlineSpan>? textSpans;
  LinkText({
    required this.text,
    required this.callback,
    this.color = klinkcolor,
    this.textSpans,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text.rich(
        TextSpan(
          text: text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 12.sp,
            fontWeight: FontWeight.w200,
            color: color,
          ),
          children: textSpans ?? [],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

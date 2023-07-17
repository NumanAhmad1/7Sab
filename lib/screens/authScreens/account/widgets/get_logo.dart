import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GetCompanyLogo extends StatelessWidget {
  final String imageLink;
  final Function() callback;
  const GetCompanyLogo({
    required this.imageLink,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: SizedBox(
        height: 143.w,
        width: 121.h,
        child: SvgPicture.asset(
          imageLink,
          fit: BoxFit.fill,
          
        ),
      ),
    );
  }
}

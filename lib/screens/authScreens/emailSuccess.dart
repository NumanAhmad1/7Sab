import 'dart:async';

import 'package:flutter/material.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'mobileOTP.dart';

class EmailSuccess extends StatefulWidget {
  const EmailSuccess({super.key});

  @override
  State<EmailSuccess> createState() => _EmailSuccessState();
}

class _EmailSuccessState extends State<EmailSuccess> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(
      Duration(seconds: 2),
      () {
        Utils.showEnterMobileNumberWindow(context);
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundScreen(),
          Column(
            children: [
              SizedBox(
                height: height * 0.15,
              ),
              const Center(
                child: NormalText1(text: 'Success!'),
              ),
              SizedBox(
                height: height * 0.1,
              ),
              SvgPicture.asset(
                'assets/images/emailSuccess.svg',
                fit: BoxFit.fill,
                height: 185.h,
                width: 213.w,
              ),
              // SizedBox(
              //   height: 185.h,
              //   width: 213.w,
              //   child: Image.asset(
              //     'assets/images/emailSuccess.png',
              //     fit: BoxFit.cover,
              //   ),
              // ),
              SizedBox(
                height: height * 0.05,
              ),
              const NormalText3(text: 'Email authentication is successful! '),
            ],
          ),
        ],
      ),
    );
  }
}

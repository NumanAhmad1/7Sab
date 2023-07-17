import 'dart:async';

import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'enterEmailOTP.dart';

class EmailSend extends StatefulWidget {
  const EmailSend({super.key});

  @override
  State<EmailSend> createState() => _EmailSendState();
}

class _EmailSendState extends State<EmailSend> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const EnterEmailOTP()));
    });
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
                'assets/images/emailSend.svg',
                fit: BoxFit.fill,
                height: 261.27.h,
                width: 252.92.w,
              ),
              // SizedBox(
              //   height: 261.27.h,
              //   width: 252.92.w,
              //   child: Image.asset('assets/images/emailSend.png', fit: BoxFit.cover,),
              // ),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                width: 300.w,
                child: NormalText3(
                  text:
                      'You will receive an OTP on your email ID "Nikki@ciscovest.com" and mobile number "xxxxxxx699" ',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

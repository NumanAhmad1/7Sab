import 'dart:async';

import 'package:financial_app/screens/authScreens/emailSend.dart';
import 'package:financial_app/screens/authScreens/verificationFaild.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'emailSuccess.dart';

class EnterEmailOTP extends StatefulWidget {
  const EnterEmailOTP({super.key});

  @override
  State<EnterEmailOTP> createState() => _EnterEmailOTPState();
}

class _EnterEmailOTPState extends State<EnterEmailOTP> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          BackGroundScreen(),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                const Center(
                  child: NormalText1(text: 'Enter Your Email OTP'),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                SvgPicture.asset(
                  'assets/images/enterEmailOTP.svg',
                  fit: BoxFit.fill,
                  height: 181.h,
                  width: 272.w,
                ),
                // SizedBox(
                //   height: 181.h,
                //   width: 272.w,
                //   child: Image.asset(
                //     'assets/images/enterEmailOTP.png',
                //     fit: BoxFit.cover,
                //   ),
                // ),
                SizedBox(
                  height: height * 0.1,
                ),
                CustomPinCodeTextField(),
                SizedBox(
                  height: height * 0.07,
                ),
                SizedBox(
                  width: 1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EmailSend()));
                          },
                          child: const Text('Resend')),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Button1(
                  buttonText: 'Next',
                  isIcon: true,
                  icon: Icons.arrow_forward_rounded,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmailSuccess(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



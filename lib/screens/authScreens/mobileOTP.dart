import 'dart:async';

import 'package:financial_app/screens/authScreens/emailSend.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'loginSuccess.dart';

class EnterMobileOTP extends StatefulWidget {
  const EnterMobileOTP({super.key});

  @override
  State<EnterMobileOTP> createState() => _EnterMobileOTPState();
}

class _EnterMobileOTPState extends State<EnterMobileOTP> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }

  int _remainingSeconds = 20;

  void timer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          timer.cancel();
          // _showSnackBar();
          // Timer.periodic(Duration(seconds: 3), (timer) {
          //   Navigator.pop(context);
          // }
          // );
        }
      });
    });
  }

  // void _showSnackBar() {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text('Time Up'),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundScreen(),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                const Center(
                  child: NormalText1(text: 'Enter Your Mobile OTP'),
                ),
                SizedBox(
                  height: 100.h,
                ),
                SvgPicture.asset(
                  'assets/images/mobileVerification.svg',
                  fit: BoxFit.fill,
                  height: 181.h,
                  width: 272.w,
                ),
                // SizedBox(
                //   height: 181.h,
                //   width: 272.w,
                //   child: Image.asset(
                //     'assets/images/mobileVerification.png',
                //     fit: BoxFit.cover,
                //   ),
                // ),
                SizedBox(
                  height: 100.h,
                ),
                CustomPinCodeTextField(),
                // SizedBox(
                //   width: 275.w,
                //   height: 43.h,
                //   child: PinCodeTextField(
                //     dialogConfig: null,
                //     enableActiveFill: true,
                //     appContext: context,
                //     length: 5,
                //     onChanged: (value) {},
                //     pinTheme: PinTheme(
                //       disabledBorderWidth: 1.sp,
                //       disabledColor: Colors.grey,
                //       inactiveBorderWidth: 1.sp,
                //       selectedColor: Colors.white70,
                //       selectedFillColor: Colors.white70,
                //       inactiveFillColor: kwhite,
                //       activeColor: Colors.white,
                //       shape: PinCodeFieldShape.box,
                //       fieldHeight: 43.h,
                //       fieldWidth: 37.w,
                //       inActiveBoxShadow: [
                //         const BoxShadow(
                //           color: Colors.grey, // shadow color
                //           spreadRadius: 1, // spread radius
                //           blurRadius: 10, // blur radius
                //           offset: Offset(0, 5),
                //         ),
                //       ],
                //       inactiveColor: Colors.grey,
                //       activeFillColor: Colors.white70,
                //       activeBoxShadow: [
                //         const BoxShadow(
                //           color: Colors.grey, // shadow color
                //           spreadRadius: 1, // spread radius
                //           blurRadius: 10, // blur radius
                //           offset: Offset(0, 5),
                //         ),
                //       ],
                //     ),
                //     keyboardType: TextInputType.number,
                //     // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                //     enablePinAutofill: true,
                //     // autofillHints: const [AutofillHints.oneTimeCode],
                //     beforeTextPaste: (text) {
                //       return true;
                //     },
                //   ),
                // ),

                SizedBox(
                  height: 50.h,
                ),
                SizedBox(
                  width: 1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 210.w,
                        child: Row(
                          children: [
                            const NormalText3(
                              text: 'You will receive OTP in ',
                              size: 14,
                              color: klightgrey,
                            ),
                            NormalText3(
                              text: '00:$_remainingSeconds',
                              color: korange,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EmailSend(),
                              ),
                            );
                          },
                          child: const Text('Resend')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                Button1(
                  buttonText: 'Submit ',
                  isIcon: true,
                  icon: Icons.thumb_up_alt_outlined,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginSuccess(),
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


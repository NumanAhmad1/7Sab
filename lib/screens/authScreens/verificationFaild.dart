import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VerificationFailed extends StatelessWidget {
  const VerificationFailed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundScreen(),
          Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              const Center(
                child: NormalText1(text: 'Verification Failed'),
              ),
              SizedBox(
                height: 150.h,
              ),
              SvgPicture.asset(
                'assets/images/verificationFailed.svg',
                fit: BoxFit.fill,
                height: 185.h,
                width: 213.w,
              ),
              // SizedBox(
              //   height: 185.h,
              //   width: 213.w,
              //   child: Image.asset('assets/images/verificationFailed.png', fit: BoxFit.cover,),
              // ),
              SizedBox(
                height: 50.h,
              ),
              const NormalText3(
                text: 'Email authentication is Failed!',
                color: kred,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

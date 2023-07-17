import 'package:financial_app/screens/authScreens/login.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 6,
            ),
            // SizedBox(
            //   height: 150.h,
            // ),
            SvgPicture.asset(
              'assets/images/welcomeScreen/welcome3.svg',
              fit: BoxFit.fill,
              height: 235.4.h,
              width: 231.01.w,
            ),
            // SizedBox(
            //   height: 235.4.h,
            //   width: 231.01.w,
            //   child: Image.asset(
            //     'assets/images/welcomeScreen/welcome3.png',
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Spacer(),
            const NormalText1(text: 'We Provide Security'),
            SizedBox(
              width: 240.w,
              child: const NormalText2(
                  text:
                      'We offer most secure payment method to all our customers'),
            ),
            Spacer(),
            SizedBox(
              width: 240.w,
              child: const NormalText1(
                  localisation: 'ar',
                  text: 'نحن نقدم طريقة دفع أكثر أمانًا لجميع عملائنا'),
            ),
            Spacer(
              flex: 4,
            ),
            // SizedBox(
            //   height: 150.h,
            // ),
            // TextButton(
            // onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const WelcomeScreen3();
            //     },
            //   ),
            // );
            // },
            // child: const Text('Next'),
            // ),
            //       Padding(
            //         padding: EdgeInsets.only(bottom: 44.h),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             GestureDetector(
            //               onTap:(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen3()));},
            //               child: NormalText1(text: 'Skip',),
            //             ),
            //             InkWell(
            //               onTap:
            //                   ()=>Navigator.push(context,
            //                     MaterialPageRoute(builder:
            //                         (context)=>Login(),
            //                     ),
            //                   ),
            //               child: NormalText1(text: 'Next'),
            //             ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

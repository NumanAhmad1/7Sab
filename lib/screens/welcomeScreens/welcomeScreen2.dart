import 'package:financial_app/screens/welcomeScreens/welcomeScreen3.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

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
              'assets/images/welcomeScreen/welcome2.svg',
              fit: BoxFit.fill,
              width: 231.01.w,
              height: 235.4.h,
            ),
            // SizedBox(
            //   height: 235.4.h,
            //   width: 231.01.w,
            //   child: SvgPicture.asset(
            //     'assets/images/welcomeScreen/welcome2.png',
            //     fit: BoxFit.fill,
            //     width: 231.01.w,
            //     height: 235.4.h,
            //   ),
            //   // child: Image.asset('assets/images/welcomeScreen/welcome2.png', fit: BoxFit.fill,),
            // ),
            Spacer(),
            const NormalText1(text: 'We provide convenience'),
            Spacer(),
            SizedBox(
              width: 240.w,
              child: const NormalText2(
                  text:
                      'We provide convenience and ease for Qatari companies with the press of a button'),
            ),
            Spacer(),
            SizedBox(
              width: 240.w,
              child: const NormalText1(
                  localisation: 'ar',
                  text: 'نحن نوفر راحة وسهولة للشركات القطرية بضغطة زر'),
            ),
            Spacer(
              flex: 6,
            ),
            // SizedBox(
            //   height: 150.h,
            // ),
            // TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: ((context) => const WelcomeScreen3()),),);}, child:const Text('Next')),
            //         Padding(
            //         padding: EdgeInsets.only(bottom: 0.h, ),
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
            //                         (context)=>WelcomeScreen3(),
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

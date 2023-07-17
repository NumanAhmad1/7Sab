
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



class WelcomeScreen1 extends StatelessWidget {
  const WelcomeScreen1({super.key});

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
            // SizedBox(height: 150.h,),
            SizedBox(
              height: 235.4.h,
              width: 231.01.w,
              child: SvgPicture.asset(
                'assets/images/welcomeScreen/welcome1.svg',
                fit: BoxFit.cover,
              ),
              // child: Image.asset('assets/images/welcomeScreen/welcome1.png', fit: BoxFit.cover,),
            ),
            Spacer(),
            const NormalText1(
              text: 'We Provide Growth',
            ),
            Spacer(),
            SizedBox(
              width: 240.w,
              child: const NormalText2(
                text:
                    'We support companies to continue to grow and compete in the future',
              ),
            ),
            Spacer(),
            SizedBox(
              width: 240.w,
              child: const NormalText1(
                localisation: 'ar',
                text: 'نحن ندعم الشركات لمواصلة النمووالتنافس في المستقبل',
              ),
            ),
            Spacer(
              flex: 6,
            ),
            // SizedBox(height: 150.h,),
            // TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){return const WelcomeScreen2();}));}, child:const Text('Next')),
            //       Padding(
            //       padding: EdgeInsets.only(bottom: 44.h),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           GestureDetector(
            //             onTap:(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen3()));},
            //             child: NormalText1(text: 'Skip',),
            //           ),
            //           InkWell(
            //             onTap:
            //                 ()=>Navigator.push(context,
            //                   MaterialPageRoute(builder:
            //                       (context)=>WelcomeScreen2(),
            //                   ),
            //                 ),
            //             child: NormalText1(text: 'Next'),
            //           ),
            //   ],
            // ),
            // ),
          ],
        ),
      ),
    );
  }
}

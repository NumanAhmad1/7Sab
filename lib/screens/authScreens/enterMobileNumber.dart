import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EnterMobileNumber extends StatefulWidget {
  const EnterMobileNumber({super.key});

  @override
  State<EnterMobileNumber> createState() => _EnterMobileNumberState();
}

class _EnterMobileNumberState extends State<EnterMobileNumber> {
 var enterMobileNumberController = TextEditingController();

  

 bool _enterMoberNumberError = false;
  
  String _enterMobileNumberErrorText= '';
  void _verifyPhoneNumber() {
    setState(() {
      
      _enterMoberNumberError = enterMobileNumberController.text.isEmpty;
      _enterMobileNumberErrorText = 'Please enter your mobile number';
      

      if (
          !_enterMoberNumberError
          ) {
        // Navigate to the next screen
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => NextScreen(),
        //   ),
        // );
        Utils.showMobileOTPWindow(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        children: [
          const BackGroundScreen(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  const Center(
                    child: TitleText1(text: 'Enter Your Mobile Number'),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  SvgPicture.asset(
                    'assets/images/enter_mobile_number.svg',
                    fit: BoxFit.fill,
                    height: 174.h,
                    width: 258.w,
                  ),
                  // 
                  InputTextField(
                      keyboard: TextInputType.number,
                      obscure: false,
                      hintText: '+54  Enter your mobile number',
                      icon: Icons.phone_android_rounded,
                      controller: enterMobileNumberController,
                      topPadding: height * 0.1,
                      haseError: _enterMoberNumberError,
                      errorText: _enterMobileNumberErrorText,
                    ),

                  
                    SizedBox(
                      height: height*0.15,
                    ),
                  Button1(
                    buttonText: 'Submit  ',
                    isIcon: true,
                    icon: Icons.thumb_up_alt_outlined,
                    onTap: () {_verifyPhoneNumber();},
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// 
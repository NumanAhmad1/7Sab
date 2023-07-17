import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var newPasswordController = TextEditingController();

  var confirmPasswordController = TextEditingController();

 bool _newPasswordError = false;
  bool _confirmpasswordError = false;
  String _newPasswordErrorText = '';
  String _confirmPasswordErrorText= '';
  void _verifyResetPassword() {
    setState(() {
      _newPasswordError = newPasswordController.text.isEmpty;
      _newPasswordErrorText = 'Please enter your new password';
      _confirmpasswordError = confirmPasswordController.text.isEmpty;
      _confirmPasswordErrorText = 'Please enter confirm password';
      

      if (
          !_newPasswordError &&
          !_confirmpasswordError 
          ) {
        // Navigate to the next screen
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => NextScreen(),
        //   ),
        // );

        Utils.showWelcome1Account(context);
        
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
                    child: TitleText1(text: 'Reset Password'),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  SvgPicture.asset(
                    'assets/images/resetPassword.svg',
                    fit: BoxFit.fill,
                    height: 160.h,
                    width: 255.w,
                  ),
                  // SizedBox(
                  //   height: 160.h,
                  //   width: 255.w,
                  //   child: Image.asset('assets/images/resetPassword.png', fit: BoxFit.cover,),
                  // ),
                  InputTextField(
                      keyboard: TextInputType.visiblePassword,
                      obscure: true,
                      hintText: 'Enter your new password',
                      icon: Icons.lock_outline_rounded,
                      controller: newPasswordController,
                      topPadding: height * 0.02,
                      haseError: _newPasswordError,
                      errorText: _newPasswordErrorText,
                    ),

                  InputTextField(
                      keyboard: TextInputType.visiblePassword,
                      obscure: true,
                      hintText: 'Enter Your Password',
                      icon: Icons.lock_outline_rounded,
                      controller: confirmPasswordController,
                      topPadding: height * 0.02,
                      haseError: _confirmpasswordError,
                      errorText: _confirmPasswordErrorText,
                    ),
                    SizedBox(
                      height: height*0.1,
                    ),
                  Button1(
                    buttonText: 'Done',
                    isIcon: true,
                    icon: Icons.thumb_up_alt_outlined,
                    onTap: () {_verifyResetPassword();},
                  ),
                  LinkText(
                    text: "Login in",
                    callback: () {
                      Utils.showLoginWindow(context);
                    },
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

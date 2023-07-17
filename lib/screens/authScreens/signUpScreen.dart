import 'package:financial_app/screens/authScreens/login.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'emailSend.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool _firstNameError = false;
  bool _lastNameError = false;
  bool _emailError = false;
  bool _passwordError = false;
  String _firstNameErrorText = '';
  String _lastNameErrorText= '';
   String _emailErrorText = "";
   String _passwordErrorText = "";

  void _verifySignUp() {
    setState(() {
      _firstNameError = firstNameController.text.isEmpty;
      _firstNameErrorText = 'Please enter your Fisrt Name';
      _lastNameError = lastNameController.text.isEmpty;
      _lastNameErrorText = 'Please enter your Last Name';
      _emailError = emailController.text.isEmpty;
      _emailErrorText = 'Please enter your email';
      _passwordError = passwordController.text.isEmpty;
      _passwordErrorText = 'Please enter your password';

      if (!_emailError &&
          !_passwordError &&
          !_firstNameError &&
          !_lastNameError) {
        // Navigate to the next screen
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => NextScreen(),
        //   ),
        // );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EmailSend();
            },
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const BackGroundScreen(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: height * 0.1,
                    ),
                    const NormalText1(
                      text: 'Sign Up',
                    ),
                    SizedBox(
                      height: height * 0.06,
                    ),
                    SvgPicture.asset(
                      'assets/images/signupScreen.svg',
                      fit: BoxFit.fill,
                      height: 148.h,
                      width: 204.w,
                    ),
                    // SizedBox(
                    //   height: 148.h,
                    //   width: 204.w,
                    //   child: Image.asset(
                    //     'assets/images/signupScreen.png',
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                   
                    InputTextField(
                      keyboard: TextInputType.name,
                      obscure: false,
                      hintText: 'Enter your first name',
                      icon: Icons.person_3_outlined,
                      controller: firstNameController,
                      topPadding: height * 0.02,
                      haseError: _firstNameError,
                      errorText: _firstNameErrorText,
                    ),
                    
                    InputTextField(
                      keyboard: TextInputType.name,
                      obscure: false,
                      hintText: 'Enter your last name',
                      icon: Icons.person_3_outlined,
                      controller: lastNameController,
                      topPadding: height * 0.02,
                      haseError: _lastNameError,
                      errorText: _lastNameErrorText,
                    ),
                   
                    InputTextField(
                      keyboard: TextInputType.emailAddress,
                      obscure: false,
                      hintText: 'Enter you email address',
                      icon: Icons.email_outlined,
                      controller: emailController,
                      topPadding: height * 0.02,
                      haseError: _emailError,
                      errorText: _emailErrorText,
                    ),
                    
                    
                    InputTextField(
                      keyboard: TextInputType.visiblePassword,
                      obscure: true,
                      hintText: 'Enter Your Password',
                      icon: Icons.lock_outline_rounded,
                      controller: passwordController,
                      topPadding: height * 0.02,
                      haseError: _passwordError,
                      errorText: _passwordErrorText,
                    ),
                    SizedBox(
                      height: height * 0.07,
                    ),
                    Button1(
                      buttonText: 'Sign Up',
                      isIcon: true,
                      icon: Icons.content_paste,
                      onTap: () {
                        _verifySignUp();
                      },
                    ),
                    LinkText(text: 'Already have an account? Log In', callback: (){Utils.showLoginWindow(context);},),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

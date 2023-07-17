import 'package:financial_app/screens/authScreens/signUpScreen.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var aliasController = TextEditingController();
  bool isActive = false;
  bool _emailError = false;
  String _emailErrorText = "";
  bool _passwordError = false;
  String _passwordErrorText = "";

  void _verifyLogin() {
    setState(() {
      _emailError = emailController.text.isEmpty;
      _emailErrorText = 'Please enter your email';
      _passwordError = passwordController.text.isEmpty;
      _passwordErrorText = 'Please enter your password';

      if (!_emailError && !_passwordError) {
        // Navigate to the next screen
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => NextScreen(),
        //   ),
        // );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    var lastInput = aliasController;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              const BackGroundScreen(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: height * 0.085,
                    ),
                    const TitleText1(text: 'Login'),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    SvgPicture.asset(
                      'assets/images/loginimage.svg',
                      fit: BoxFit.fill,
                      height: 148.h,
                      width: 204.w,
                    ),
                    InputTextField(
                      keyboard: TextInputType.emailAddress,
                      hintText: 'Enter Your Email address',
                      icon: Icons.mail_outline_rounded,
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
                    // AnimatedContainer(
                    //   duration: const Duration(milliseconds: 500),
                    //   curve: Curves.easeInOut,
                    //   height: isActive ? height * 0.0851 : 0,
                    //   child:
                    isActive
                        ? InputTextField(
                            keyboard: TextInputType.name,
                            hintText: 'Login as alias',
                            icon: Icons.person_2_outlined,
                            controller: lastInput,
                            topPadding: height * 0.0,
                          )
                        : SizedBox(),
                    // ),
                    SizedBox(
                      height: height * 0.013,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CheckboxField(
                          text: 'Remember Me',
                          callback: (p0) => {},
                        ),
                        LinkText(
                          text: "Forgot Password?",
                          callback: () {
                            Utils.showResetPassWindow(context);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.013,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const LabelText(
                          text: 'Login as alias',
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return CustomDialogue(titleText: 'Login as alias', description: 'Login as alias allows you to login to your account using a custom name', buttontext: 'Close', callback: (){Utils.GoBackToPreviousScreen(context);});
                                    },
                                  );
                                },
                                icon: const Icon(Icons.info_outlined),
                              ),
                              SizedBox(
                                height: height * 0.013,
                                width: width * 0.05,
                              ),
                              SwitchField(
                                text: 'Login as alias',
                                callback: (p0) {
                                  setState(() {
                                    isActive = p0;
                                    lastInput = isActive
                                        ? aliasController
                                        : passwordController;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Button1(
                      buttonText: 'Login',
                      isIcon: true,
                      onTap: () {
                        _verifyLogin();
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Button2(
                      localisation: 'ar',
                      buttonText: 'ترجمة باللغة العربية ',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    LinkText(
                        text: '',
                        textSpans: const <InlineSpan>[
                          TextSpan(text: 'Don\'t have an Account? '),
                          TextSpan(
                              text: 'Sign up',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                        ],
                        callback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()));
                        }),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


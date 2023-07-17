import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:financial_app/screens/authScreens/resetPassword.dart';
import 'package:financial_app/lib_all.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  _LoginSuccessState createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<String> imagePaths = [
    'assets/images/successAnimated1.png',
    'assets/images/successAnimated2.png',
    'assets/images/successAnimated3.png',
    'assets/images/successAnimated4.png',
  ];
  List<Positioned> imageWidgets = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _startAnimation();
  }

  void _startAnimation() {
    _controller.forward().then((_) {
      setState(() {
        if (imageWidgets.length < imagePaths.length) {
          // Assign positions to the animation images
          imageWidgets.add(
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 100,
              left: MediaQuery.of(context).size.width / 2 - 100,
              child: Image.asset(
                imagePaths[imageWidgets.length],
                width: 200,
                height: 200,
              ),
            ),
          );
        } else if (imageWidgets.length == imagePaths.length - 2) {
          // Assign custom positions to the last two images
          imageWidgets.add(
            Positioned(
              top: 220.h,
              left: 130.w,
              right: 150.w,
              bottom: 200.w,
              child: Image.asset(
                imagePaths[imageWidgets.length],
                width: 200,
                height: 200,
              ),
            ),
          );
          imageWidgets.add(
            Positioned(
              top: 200.h ,
              right: 170.w,
              bottom: 200.h,
              child: Image.asset(
                imagePaths[imageWidgets.length],
                width: 200,
                height: 200,
              ),
            ),
          );
        }

        if (imageWidgets.length == imagePaths.length) {
          // All animation images have been added
          // Navigate to the new screen
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ResetPassword()),
          );
        }
      });

      // Start the animation again if there are more images to animate
      if (imageWidgets.length < imagePaths.length) {
        _controller.reset();
        _startAnimation();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundScreen(),
          Center(
            child: Stack(
              children: imageWidgets,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              const Center(child: NormalText1(text: 'Success!')),
            ],
          ),
        ],
      ),
    );
  }
}
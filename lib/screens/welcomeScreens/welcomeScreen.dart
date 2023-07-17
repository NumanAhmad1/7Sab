import 'package:financial_app/screens/welcomeScreens/welcomeScreen1.dart';
import 'package:financial_app/screens/welcomeScreens/welcomeScreen2.dart';
import 'package:financial_app/screens/welcomeScreens/welcomeScreen3.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../authScreens/login.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPage < 2) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void _goToThirdScreen() {
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 0.82.sh,
            child: PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: const [
                WelcomeScreen1(),
                WelcomeScreen2(),
                WelcomeScreen3(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: WormEffect(
                type: WormType.thinUnderground,
                activeDotColor: kprimarycolor2,
                dotColor: klightgrey,
                dotHeight: 10.h,
                dotWidth: 10.w,
                spacing: 16.w,
                paintStyle: PaintingStyle.stroke,
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (_currentPage < 2)
                  TextButton(
                    onPressed: _goToThirdScreen,
                    child: const Text('Skip'),
                  ),
                // ElevatedButton(
                //   onPressed: _goToNextPage,
                //   child: Text(_currentPage < 2 ? 'Next' : 'Finish'),
                // ),
                _currentPage < 2
                    ? TextButton(
                        onPressed: _goToNextPage,
                        child: const Text('Next'),
                      )
                    : Button1(
                        buttonText: 'Get Started',
                        isIcon: false,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Login(),
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

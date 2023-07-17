import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Welcome1Account extends StatefulWidget {
  Welcome1Account({super.key});

  @override
  State<Welcome1Account> createState() => _Welcome1AccountState();
}

class _Welcome1AccountState extends State<Welcome1Account> {
  var companyNameController = TextEditingController();

  bool _companyNameError = false;
  String _companyNameErrorText = '';
  void _verifyCompanyName() {
    setState(() {
      _companyNameError = companyNameController.text.isEmpty;
      _companyNameErrorText = 'Please enter your company Name';

      if (!_companyNameError) {
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

                  SizedBox(
                    height: 100.h,
                  ),
                  SvgPicture.asset(
                    'assets/images/welcome_1.svg',
                    fit: BoxFit.fill,
                    height: 160.h,
                    width: 255.w,
                  ),
                  SizedBox(height: height*0.1,),
                  InputTextField(
                    keyboard: TextInputType.visiblePassword,
                    obscure: false,
                    hintText: 'Enter your company name',
                    icon: Icons.view_compact_outlined,
                    controller: companyNameController,
                    topPadding: height * 0.02,
                    haseError: _companyNameError,
                    errorText: _companyNameErrorText,
                  ),

                  SizedBox(
                    height: height * 0.1,
                  ),
                  Button1(
                    buttonText: 'Submit  ',
                    isIcon: true,
                    icon: Icons.thumb_up_alt_outlined,
                    onTap: () {
                      _verifyCompanyName();
                    },
                  ),
                  SizedBox(height: height*0.1,),
                  LinkText(
                    text: "Skip",
                    callback: () {Utils.showLoginWindow(context);},
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

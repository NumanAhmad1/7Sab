import 'package:flutter/material.dart';
import 'package:financial_app/lib_all.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class CustomPinCodeTextField extends StatelessWidget {
  const CustomPinCodeTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275.w,
      height: 43.h,
      child: PinCodeTextField(
        enableActiveFill: true,
        appContext: context,
        length: 5,
        onChanged: (value) {},
        pinTheme: PinTheme(
          disabledBorderWidth: 1.sp,
          disabledColor: Colors.grey,
          inactiveBorderWidth: 1.sp,
          selectedColor: Colors.white70,
          selectedFillColor: Colors.white70,
          inactiveFillColor: kwhite,
          activeColor: Colors.white,
          shape: PinCodeFieldShape.box,
          fieldHeight: 43.h,
          fieldWidth: 37.w,
          inActiveBoxShadow: [
            const BoxShadow(
              color: Colors.grey, // shadow color
              spreadRadius: 1, // spread radius
              blurRadius: 10, // blur radius
              offset: Offset(0, 5),
            ),
          ],
          inactiveColor: Colors.grey,
          activeFillColor: Colors.white70,
          activeBoxShadow: [
            const BoxShadow(
              color: Colors.grey, // shadow color
              spreadRadius: 1, // spread radius
              blurRadius: 10, // blur radius
              offset: Offset(0, 5),
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const.dart';

class InputTextField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextInputType keyboard;
  bool obscure = false;
  bool haseError = false;
  double topPadding = 0.0;
  String errorText = "";
  String aboveText = "";
  final TextEditingController controller;
  Function()? suffixIconCallback;

  @override
  InputTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.icon,
    required this.keyboard,
    this.obscure = false,
    this.haseError = false,
    this.errorText = "",
    this.aboveText = "",
    this.topPadding = 0.0,
    Function()? suffixIconCallback,
  }) : super(key: key);
  _InputTextFieldState createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if (widget.aboveText != '')
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 45.w),
              child: Text(
                widget.aboveText,
                style: TextStyle(color: ktexteditabovecolor),
              ),
            ),
          )
        else if (widget.topPadding > 0.0)
          SizedBox(
            height: widget.topPadding,
          ),
        TextField(
          keyboardType: widget.keyboard,
          controller: widget.controller,
          obscureText: widget.obscure,
          decoration: InputDecoration(
            errorText: widget.errorText == '' ? null : widget.errorText,
            errorStyle: TextStyle(
              fontFamily: 'Montserrat-Light',
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
              color: kerrorcolor,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.1.w, color: korange),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.1.w, color: kerrorcolor),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.1.w, color: kdarkgrey),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.1.w, color: kerrorcolor),
            ),
            prefixIcon: Icon(widget.icon,
                color: widget.errorText == '' ? korange : kerrorcolor),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontFamily: 'Montserrat-Light',
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
              color: klightgrey,
            ),
            suffixIcon: widget.obscure
                ? IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      widget.suffixIconCallback!();
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}

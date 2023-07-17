import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const.dart';

class SwitchField extends StatefulWidget {
  String text = "";
  Function(bool) callback;

  @override
  SwitchField({Key? key, required this.callback, required this.text})
      : super(key: key);
  _SwitchFieldState createState() => _SwitchFieldState();
}

class _SwitchFieldState extends State<SwitchField> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    Switch swtchBox = Switch(
      value: isActive,
      onChanged: (bool newvalue) {
        widget.callback(newvalue!);
        setState(() {
          isActive = newvalue;
        });
      },
      activeColor: kprimary,
      inactiveTrackColor: kwhite,
      activeTrackColor: kwhite,
    );

    return SizedBox(
      child: Row(
        children: [
          Container(
            height: 34.h,
            width: 56.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: klightgrey,
                width: 2.w,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: swtchBox,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                isActive = !isActive;
              });
            },
            child: SwitchBoxText(text: widget.text),
          ),
        ],
      ),
    );
    ;
  }
}

class SwitchBoxText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const SwitchBoxText({
    required this.text,
    this.color = kcheckboxtxtcolor,
    this.size = 12,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: size.sp,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/const.dart';

class CheckboxField extends StatefulWidget {
  String text = "";
  Function(bool) callback;

  @override
  CheckboxField({Key? key, required this.callback, required this.text})
      : super(key: key);
  _CheckboxFieldState createState() => _CheckboxFieldState();
}

class _CheckboxFieldState extends State<CheckboxField> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Checkbox chkBox = Checkbox(
      value: isChecked,
      onChanged: (newvalue) {
        widget.callback(newvalue!);
        setState(
          () {
            isChecked = newvalue!;
          },
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => BorderSide(width: 1, color: kuncheckedborder),
      ),
    );
    return SizedBox(
      child: Row(
        children: [
          chkBox,
          TextButton(
            onPressed: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: CheckBoxText(text: widget.text),
          ),
        ],
      ),
    );
    ;
  }
}

class CheckBoxText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  const CheckBoxText({
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

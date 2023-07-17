
import 'package:financial_app/lib_all.dart';
import 'package:flutter/material.dart';

class CustomDialogue extends StatelessWidget {
  final String titleText;
  final String description;
  final String buttontext;
  final Function() callback;
  const CustomDialogue({
    required this.titleText,
    required this.description,
    required this.buttontext,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: NormalText1(text: titleText),
      content: NormalText2(text: description),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child:  LinkText(text: buttontext, callback: callback),
        ),
        
      ],
    );
  }
}

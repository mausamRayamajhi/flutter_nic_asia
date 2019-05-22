import 'package:flutter/material.dart';
import 'package:nic_asia/src/util/constant.dart';

class CustomInputField extends StatelessWidget {
  final String textHint;
  final TextInputType keyboardType;
  final bool showInputText;
  CustomInputField({
    this.textHint,
    this.showInputText = false,
    this.keyboardType = TextInputType.text,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      obscureText: showInputText,
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
        border: OutlineInputBorder(
          borderSide: new BorderSide(color: primaryColor),
        ),
        hintText: textHint,
      ),
    );
  }
}

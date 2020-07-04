import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Image.asset("assets/images/logo.png", height: 50),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: "email",
      hintStyle: TextStyle(
        color: Colors.white54,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ));
}

TextStyle simpleTextFieldStyle() {
  return TextStyle(color: Colors.white);
}

TextStyle mediumTextFieldStyle() {
  return TextStyle(color: Colors.white, fontSize: 17);
}

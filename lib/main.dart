import 'package:flutter/material.dart';
import 'package:flutterfirebase/views/signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1F1F1F1),
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}

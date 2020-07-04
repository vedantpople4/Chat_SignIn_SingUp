import 'package:flutter/material.dart';
import 'package:flutterfirebase/widgets/widget.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(context),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(children: [
              TextField(
                  style: simpleTextFieldStyle(),
                  decoration: textFieldInputDecoration("email")),
              TextField(
                  style: simpleTextFieldStyle(),
                  decoration: textFieldInputDecoration("password")),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text("Forgot password", style: simpleTextFieldStyle()),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color(0xff007EF4),
                    const Color(0xff2A75BC)
                  ]),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    )),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color(0xff007EF4),
                    const Color(0xff2A75BC)
                  ]),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    )),
              )
            ])));
  }
}

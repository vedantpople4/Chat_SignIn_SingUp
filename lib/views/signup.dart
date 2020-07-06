import 'package:flutter/material.dart';
import 'package:flutterfirebase/widgets/widget.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(context),
        body: SingleChildScrollView(
            child: Container(
                alignment: Alignment.bottomCenter,
                height: 50.00,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                            controller: userNameTextEditingController,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("username")),
                        TextFormField(
                            controller: emailTextEditingController,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("email")),
                        TextFormField(
                            controller: passwordTextEditingController,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("password")),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child:
                        Text("Forgot password", style: simpleTextFieldStyle()),
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
                    child: Text("Sign In", style: mediumTextFieldStyle()),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text("Sign In with Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account ",
                            style: mediumTextFieldStyle()),
                        Text("SignIn now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              decoration: TextDecoration.underline,
                            )),
                      ])
                ]))));
  }
}

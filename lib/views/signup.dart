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

  signMeUP() {
    if (formKey.currentState.validate()) {}
  }

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
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                            validator: (val) {
                              return val.isEmpty || val.length < 2
                                  ? "Please provide a valid Username"
                                  : null;
                            },
                            controller: userNameTextEditingController,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("username")),
                        TextFormField(
                            validator: (val) {
                              return RegExp(
                                          r"^[a-zA-z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@-[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(val)
                                  ? null
                                  : "Please provide a valid emailId";
                            },
                            controller: emailTextEditingController,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("email")),
                        TextFormField(
                            obscureText: true,
                            validator: (val) {
                              return val.length > 6
                                  ? null
                                  : "Please provide password of 6+ characters";
                            },
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
                  GestureDetector(
                      onTap: () {
                        signMeUP();
                      },
                      child: Container(
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
                        child: Text("Sign Up", style: mediumTextFieldStyle()),
                      )),
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
                    child: Text("Sign Up with Google",
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

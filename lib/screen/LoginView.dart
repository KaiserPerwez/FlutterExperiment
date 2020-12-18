
import 'package:FlutterTempScreenFinal/utils/TextFieldElevatedBorderedErrorChecker.dart';
import 'package:FlutterTempScreenFinal/utils/styles.dart';
import 'package:flutter/material.dart';

import 'SignupView.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(32, 48, 32, 18),
        children: [
          SizedBox(height: 40),
          Text("Sign in", style: textStyleTitle),
          SizedBox(height: 20),
          Text("Login to your\npersonal cabinet", style: textStyleBold),
          SizedBox(height: 80),
          Text(" Login", style: textStyleTitle),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
            decoration: hintedInputDecoration("E-mail or phone"),
          ),
          SizedBox(height: 30),
          Text(" Password", style: textStyleTitle),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
              obscureText: true,
              decoration: hintedInputDecoration(
                  "*****", Icon(Icons.wallpaper, color: colorPrimary))),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                color: colorPrimary,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.remove,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 55,
                width: 150,
                child: OutlineButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupView())),
                  child: Text(
                    "Sign up",
                    style: textStyleTitle.apply(
                        color: colorPrimary, fontWeightDelta: 2),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 100),
          Text(
            "Do not remember your password?",
            textAlign: TextAlign.center,
            style: textStyleTitle.apply(decoration: TextDecoration.underline),
          ),
          SizedBox(height: 20),
          Divider(color: Colors.grey, thickness: 1),
          SizedBox(height: 30),
          Text("Social Networks", style: textStyleTitle),
          SizedBox(height: 16),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.face,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(Icons.face, color: Colors.white),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(Icons.face, color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

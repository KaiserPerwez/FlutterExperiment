
import 'package:FlutterTempScreenFinal/utils/TextFieldElevatedBorderedErrorChecker.dart';
import 'package:FlutterTempScreenFinal/utils/styles.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(32, 48, 32, 18),
        children: [
          SizedBox(height: 40),
          Text("Sign up", style: textStyleTitle),
          SizedBox(height: 20),
          Text("Join your network and meet them in your room",
              style: textStyleBold),
          SizedBox(height: 80),
          Text(
            "First Name",
            style: textStyleTitle,
          ),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
            decoration: hintedInputDecoration(
              "Your First Name",
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Last Name",
            style: textStyleTitle,
          ),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
              decoration: hintedInputDecoration(
                "Your Last Name",
              )),
          SizedBox(height: 30),
          Text(
            "Email",
            style: textStyleTitle,
          ),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
            keyboardType: TextInputType.emailAddress,
            decoration: hintedInputDecoration(
              "Your Email Address",
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Mobile Number",
            style: textStyleTitle,
          ),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
            keyboardType: TextInputType.phone,
            decoration: hintedInputDecoration(
                "Your Mobile Number",
                Text(""),
                CountryCodePicker(padding: EdgeInsets.symmetric(horizontal: 8),
                  textStyle: textStyleBold.apply(fontSizeDelta: -10),
                )),
          ),
          SizedBox(height: 30),
          Text(
            "Password",
            style: textStyleTitle,
          ),
          SizedBox(height: 14),
          TextFieldElevatedBorderedErrorChecker(
            obscureText: true,
            decoration: hintedInputDecoration(
                "*****",
                Icon(
                  Icons.wallpaper,
                  color: colorPrimary,
                )),
          ),
          SizedBox(height: 50),
          Row(
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {},
                color: colorPrimary,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.remove,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 100),
          Text(
            "Do you have an account already?",
            style: textStyleTitle.apply(
              decoration: TextDecoration.underline,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Sign In",
              style: textStyleTitle.apply(
                color: colorPrimary,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(height: 20),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          SizedBox(height: 30),
          Text(
            "Social Networks",
            style: textStyleTitle,
          ),
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
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

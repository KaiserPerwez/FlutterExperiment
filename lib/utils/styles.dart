import 'package:flutter/material.dart';

const colorPrimary = Color(0xFF0e49eb);

var textStyleTitle =
    TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500);

var textStyleBold = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 28,
);

const colorAppBg = Color.fromARGB(255, 239, 243, 255);

const colorCardHeader = Color(0xFFA7B8C0);
const colorPrimaryDark = Color.fromARGB(255, 0, 58, 98);
const bgcolorInactiveCard = Color(0xFFe9e9e9);
const bgcolorInactiveText = Color(0xFFbbbbbb);

const styleTextNoBg = TextStyle(
    color: colorPrimaryDark, fontSize: 20, fontWeight: FontWeight.w500);
const bgColorAllScreen = const Color(0xffc7d9f1);
const title_color = const Color(0xff2b629a);
var style = TextStyle(
    color: Colors.blue[900], fontWeight: FontWeight.bold, fontSize: 18);
var titleTextStyle =
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
var trailingTextStyle = TextStyle(fontWeight: FontWeight.w500);
var textStyleCardSubtitle = TextStyle(
    color: colorCardHeader, fontSize: 15, fontWeight: FontWeight.bold);

var boxDecorationCircular = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
    bottomLeft: Radius.circular(8),
    bottomRight: Radius.circular(8));

InputDecoration hintedInputDecoration(String hint,[Widget suffixIcon, Widget prefixIcon]) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(
      fontSize: 17,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
    border: InputBorder.none,
    contentPadding: EdgeInsets.symmetric(vertical:16.0,horizontal: 16),
suffixIcon: suffixIcon,
prefixIcon: prefixIcon
    // border: UnderlineInputBorder(
    //     borderSide:
    //         new BorderSide(color: Colors.black, style: BorderStyle.solid)),
    // isDense: true,
    // contentPadding: EdgeInsets.all(8.0),
    // focusedBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.blue[900], width: 1.0),
    // ),
    // enabledBorder: OutlineInputBorder(
    //   borderSide: BorderSide(color: Colors.grey, width: 1.0),
    // ),
    // errorBorder: UnderlineInputBorder(
    //   borderSide: BorderSide(color: Colors.blue[900]),
    // ),
  );
}

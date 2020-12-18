import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldElevatedBorderedErrorChecker extends StatelessWidget {
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final FocusNode currentFocus;
  final FocusNode nextFocus;
  final bool obscureText;
  final List<TextInputFormatter> inputFormatters;
  final Function(String value) validationFunction;
  final Function(String value) onSavedFunction;
  final Function(String value) onchangedFunction;

  final bool readOnly;
  final InputDecoration decoration;
  final TextEditingController controller;

  const TextFieldElevatedBorderedErrorChecker(
      {Key key,
      this.textInputAction,
      this.keyboardType = TextInputType.text,
      this.currentFocus,
      this.nextFocus,
      this.obscureText = false,
      this.decoration,
      this.controller,
      this.validationFunction,
      this.readOnly = false,
      this.inputFormatters,
      this.onSavedFunction,
      this.onchangedFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey)),
      child: TextFormField(
        enableInteractiveSelection: false,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        obscureText: obscureText,
        maxLines: 1,
        readOnly: readOnly,
        focusNode: currentFocus,
        inputFormatters: inputFormatters,
        onEditingComplete: () => FocusScope.of(context).requestFocus(nextFocus),
        decoration: decoration,
        controller: controller,
        validator: validationFunction,
        onSaved: onSavedFunction,
        onChanged: onchangedFunction,
        onFieldSubmitted: onSavedFunction,
      ),
    );
  }
}

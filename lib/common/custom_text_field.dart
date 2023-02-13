import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final int? maxLines;
  final TextInputType? textInputType;
  final bool? enabled;
  const CustomTextField({
    super.key,
    required this.labelText,
    required this.controller,
    this.maxLines = 1,  this.textInputType = TextInputType.text,
    this.enabled = true
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: textInputType,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        isDense: true,
        labelText: labelText,
        enabled: enabled!,

        labelStyle: TextStyle(fontSize: 16, color: primaryThemeColor),
        floatingLabelStyle: TextStyle(color: primaryThemeColor),
        border: OutlineInputBorder(),
        disabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: black12Color)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: black54Color)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryThemeColor)),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: redColor)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryThemeColor)),
        errorStyle: TextStyle(color: redColor, height: 0),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return "";
        }
        return null;
      },
    );
  }
}

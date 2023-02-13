import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

// ignore: must_be_immutable
class AuthCustomTextField extends StatefulWidget {
  final String hintText;
  final IconData iconData;
  final double iconSize;
  bool needObscureText;
  bool? needSuffixIcon;
    bool? passwordVisible;
  final TextEditingController controller;
  AuthCustomTextField(
      {super.key,
      required this.hintText,
      required this.iconData,
      this.needObscureText = false,
      required this.controller,
      this.needSuffixIcon = false,
      this.passwordVisible = false,
      required this.iconSize});

  @override
  State<AuthCustomTextField> createState() => _AuthCustomTextFieldState();
}

class _AuthCustomTextFieldState extends State<AuthCustomTextField> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
      width: maxWidth * 0.7,
      height: 50,
      margin: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: widget.controller,
        style: TextStyle(color: whiteColor),
        obscureText: widget.needObscureText?  !widget.passwordVisible! : false,
        cursorColor: white70Color,
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.iconData,
            size: widget.iconSize,
            color: white70Color,
          ),
          suffixIcon: widget.needSuffixIcon!
              ? IconButton(
                  icon: Icon(
                    widget.passwordVisible!
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 22,
                    color: white70Color,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.passwordVisible = !widget.passwordVisible!;
                    });
                  })
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(height: 3.4, color: white70Color),
          filled: true,
          fillColor: accentCanvasColor,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return "";
          }
          return null;
        },
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class SearchCustomField extends StatelessWidget {
  final TextEditingController controller;
  final int length;
  final void Function(String)? onChanged;
  const SearchCustomField({super.key, required this.controller, required this.length, required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return TextField(
          controller: controller,
          decoration: InputDecoration(
          alignLabelWithHint: true,
          isDense: true,
          labelText: "Search",
          labelStyle: TextStyle(
            color: primaryThemeColor
          ),
          prefixIcon: Icon(Icons.search,size: 24,color: primaryThemeColor),
          suffixIcon: length > 0 ?  
          IconButton(
            onPressed: (){
              controller.clear();
              controller.text.isEmpty;
              FocusManager.instance.primaryFocus?.unfocus();
            },
            icon: Icon(Icons.clear,color: black54Color,size: 20,)) 
          : null,
          floatingLabelStyle: TextStyle(color: primaryThemeColor),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: black54Color)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryThemeColor)),
          errorBorder:OutlineInputBorder(borderSide: BorderSide(color: redColor)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primaryThemeColor)),
          errorStyle: TextStyle(color: redColor,height: 0),
        ),
            onChanged: onChanged);
  }
}
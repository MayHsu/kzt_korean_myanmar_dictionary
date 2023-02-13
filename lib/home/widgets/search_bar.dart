import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42,
      margin: EdgeInsets.only(left: 10, right: 12, top: 6),
      child: TextFormField(
        style: TextStyle(color: primaryThemeColor),
        cursorColor: primaryThemeColor,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 22,
            color: primaryThemeColor,
          ),
          hintText: "Search",
          hintStyle: TextStyle(height: 0.7, color: primaryThemeColor),
          filled: true,
          fillColor: whiteColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2),
              borderSide: BorderSide.none),
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

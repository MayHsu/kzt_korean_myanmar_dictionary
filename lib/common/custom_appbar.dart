import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

PreferredSizeWidget CustomAppBar({
  required String title,
  List<Widget>? actions,
  required bool automaticallyImplyLeading
}) {
  return AppBar(
    backgroundColor: primaryThemeColor,
    elevation: 0,
    title: Text(
      title,
    ),
    automaticallyImplyLeading: automaticallyImplyLeading,
    centerTitle: true,
    actions: actions,
  );
}
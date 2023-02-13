import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class CustomMenuListTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onTap;
  const CustomMenuListTile(
      {super.key,
      required this.title,
      required this.iconData,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Icon(iconData,color: black54Color,),
          title: Text(title,style: TextStyle(
            color: black54Color,
            fontSize: 16
          ),),
          onTap: onTap,
        ),
        Divider(
          height: 0,
          thickness: 0.5,
          color: black54Color,
        ),
      ],
    );
  }
}

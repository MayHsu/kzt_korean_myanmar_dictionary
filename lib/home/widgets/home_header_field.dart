import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class HomeHeaderField extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;
  const HomeHeaderField({super.key, required this.drawerKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 0, left: 10),
          height: 30,
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/KZTText.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 0),
          child: Text(
            "Korean Myanmar Dictionary",
            style: TextStyle(fontSize: 17, color: whiteColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: IconButton(
              onPressed: (){
                drawerKey.currentState!.openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: whiteColor,
              )),
        )
      ],
    );
  }
}

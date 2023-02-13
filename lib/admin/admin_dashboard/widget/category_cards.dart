import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class CategoryCards extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const CategoryCards({super.key, required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
          child: InkWell(
            onTap: onTap,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: primaryThemeColor,
                    size: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5,left: 5,right: 5),
                    child: Text(
                       title,
                       textAlign: TextAlign.center,
                      style: TextStyle(color: primaryThemeColor),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}

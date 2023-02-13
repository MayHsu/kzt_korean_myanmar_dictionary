import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class TextAdDeleteDialogBody extends StatefulWidget {
  const TextAdDeleteDialogBody({super.key});

  @override
  State<TextAdDeleteDialogBody> createState() =>
      _TextAdDeleteDialogBodyState();
}

class _TextAdDeleteDialogBodyState extends State<TextAdDeleteDialogBody> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DeleteAdTitleText(),
          DeleteAdText(),
          DeleteButton()
        ],
      ),
    );
  }

  Widget DeleteAdTitleText() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 8, top: 10),
      child: Text(
        "Delete Ad",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, 
            color: blackColor),
      ),
    );
  }

  Widget DeleteAdText() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 8),
      child: Text(
        "Are you sure to delete this Ad ?",
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black),
      ),
    );
  }

  Widget DeleteButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              height: 40,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: primaryThemeColor),
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 17),
                  )),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              height: 40,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: primaryThemeColor,
                      foregroundColor: whiteColor),
                  onPressed: (){},
                  child: Text(
                    "Delete",
                    style: TextStyle(fontSize: 17),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

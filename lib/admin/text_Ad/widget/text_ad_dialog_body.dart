import 'package:flutter/material.dart';
import 'package:kzt_dictionary/common/custom_text_field.dart';
import 'package:kzt_dictionary/constant/color.dart';

class TextAdDialogBody extends StatefulWidget {
  const TextAdDialogBody({super.key});

  @override
  State<TextAdDialogBody> createState() => _TextAdDialogBodyState();
}

class _TextAdDialogBodyState extends State<TextAdDialogBody> {
  final saveTextAdFormKey = GlobalKey<FormState>();
  late TextEditingController textAdController;
  @override
  void initState() {
    super.initState();
    textAdController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textAdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Form(
        key: saveTextAdFormKey,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AdTitleText(),
              TextAdTextField(),
              SaveButton()
            ],
          ),
        ),
      ),
    );
  }

    Widget AdTitleText() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 8, top: 10),
      child: Text(
        "Add Text Ad",
        style: TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.w500, 
            color: blackColor),
      ),
    );
  }

  Widget TextAdTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextField(
        controller: textAdController,
        labelText: "Ad Description",
        maxLines: 5,
        textInputType: TextInputType.multiline,
      ),
    );
  }

  Widget SaveButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: primaryThemeColor, 
              foregroundColor: whiteColor),
          onPressed: () {
            
          },
          child: Text(
            "Save",
            style: TextStyle(fontSize: 17),
          )),
    );
  }
}

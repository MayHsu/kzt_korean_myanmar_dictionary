import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/text_Ad/widget/text_ad_delete_dialog_body.dart';

void showTextAdDeleteDialog({
  required BuildContext context,
  }) async{
  showDialog(
    context: context, 
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.075),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        child:  TextAdDeleteDialogBody()
      );
    });
}
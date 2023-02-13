import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/words/widget/word_delete_dialog_body.dart';

void showWordDeleteDialog({
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
        child:  WordDeleteDialogBody()
      );
    });
}
import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/text_Ad/widget/show_add_text_ad.dart';
import 'package:kzt_dictionary/admin/text_Ad/widget/show_text_ad_delete_dialog.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/constant/color.dart';

class TextAd extends StatefulWidget {
  static const String routeName = '/text-Ad-screen';
  const TextAd({super.key});

  @override
  State<TextAd> createState() => _TextAdState();
}

class _TextAdState extends State<TextAd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Text Ads",
          automaticallyImplyLeading: true,
        ),
        body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.all(10),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Card(
                elevation: 2,
                child: ListTile(
                  visualDensity:
                      VisualDensity(horizontal: VisualDensity.minimumDensity),
                  contentPadding: EdgeInsets.zero,
                  title: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AdsText(index),
                          EditDeleteButtons(),
                        ],
                      )),
                ));
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
        ),
        floatingActionButton: AddTextAdButton());
  }

  Widget AdsText(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 30,
          margin: EdgeInsets.only(left: 15),
          child: Text("${index + 1}"),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 5),
            child: Text(
              "This is the text ads of kzt korean myanmar dictionary This is the text ads of kzt korean myanmar dictionary.",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ],
    );
  }

  Widget AddTextAdButton() {
    return FloatingActionButton(
      backgroundColor: secondaryThemeColor,
      elevation: 0,
      onPressed: () => showAddTextAdDialog(context: context),
      child: Icon(Icons.add),
    );
  }

  Widget EditDeleteButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 50, right: 30,top: 10),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: primaryThemeColor),
                onPressed: ()=>showAddTextAdDialog(context: context),
                icon: Icon(
                  Icons.edit,
                  size: 18,
                ),
                label: Text("Edit")),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(foregroundColor: redColor),
                onPressed: ()=>showTextAdDeleteDialog(context: context),
                icon: Icon(
                  Icons.delete,
                  size: 20,
                ),
                label: Text("Delete")),
          ),
        ],
      ),
    );
  }
}

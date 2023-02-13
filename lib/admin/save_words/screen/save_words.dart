import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/words/screen/word_detail.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';

class SaveWords extends StatelessWidget {
  static const String routeName = '/save-words-screen';
  const SaveWords({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            CustomAppBar(title: "Save Words", automaticallyImplyLeading: true),
        body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
                elevation: 2,
                child: ListTile(
                  visualDensity:
                      VisualDensity(horizontal: VisualDensity.minimumDensity),
                  contentPadding: EdgeInsets.zero,
                  onTap: () =>
                      Navigator.of(context).pushNamed(WordDetail.routeName),
                  title: Row(
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
                            "고양이",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ));
          },
          separatorBuilder: (context, index) {
            return SizedBox();
          },
        ));
  }
}

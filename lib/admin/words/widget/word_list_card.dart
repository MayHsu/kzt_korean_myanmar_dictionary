import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/words/screen/word_detail.dart';
import 'package:kzt_dictionary/admin/words/widget/show_word_delete_dialog.dart';
import 'package:kzt_dictionary/constant/color.dart';

class WordsListCard extends StatefulWidget {
  const WordsListCard({super.key});

  @override
  State<WordsListCard> createState() => _WordsListCardState();
}

class _WordsListCardState extends State<WordsListCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
              elevation: 3,
              child: ExpansionTile(
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                textColor: primaryThemeColor,
                iconColor: primaryThemeColor,
                tilePadding: EdgeInsets.symmetric(horizontal: 15),
                title: WordsListTitle(index),
                children: [
                  KoreaWord(),
                  MyanmarWord(),
                  Images(index),
                  EditDeleteButtons(),
                ],
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox();
        },
      ),
    );
  }

  Widget WordsListTitle(int index) {
    return Row(
      children: [
        Container(
          width: 30,
          child: Text(
            "${index + 1}",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Expanded(
            child: Text(
          "고양이",
          style: TextStyle(
              fontSize: 14, color: redColor, fontWeight: FontWeight.w400),
        )),
      ],
    );
  }

  Widget KoreaWord() {
    return Padding(
      padding: const EdgeInsets.only(left: 45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Korea           -  ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "고양이",
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget MyanmarWord() {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Myanmar    -  ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "ကြောင်",
                style: TextStyle(fontSize: 12, height: 1.8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Images(int index) {
    return Padding(
        padding: const EdgeInsets.only(left: 45, top: 10, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Images       ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                index == 1
                    ? Container()
                    : Expanded(
                        child: Container(
                          child: Text(
                            "-   No image to display",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
              ],
            ),
            index != 1
                ? Container()
                : Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5),
                        itemBuilder: (context, index) {
                          return Image.asset(
                            "assets/KZTBGPhoto.jpg",
                            fit: BoxFit.cover,
                          );
                        }),
                  )
          ],
        ));
  }

  Widget EditDeleteButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 45, right: 18, bottom: 10, top: 10),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: primaryThemeColor),
                onPressed: () {
                  Navigator.of(context).pushNamed(WordDetail.routeName);
                },
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
                onPressed: () => showWordDeleteDialog(context: context),
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

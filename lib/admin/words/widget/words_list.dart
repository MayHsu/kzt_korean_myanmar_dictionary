import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/words/widget/word_list_card.dart';
import 'package:kzt_dictionary/common/search_custom_textfield.dart';
import 'package:kzt_dictionary/constant/color.dart';

class WordsList extends StatefulWidget {
  WordsList(
      {super.key,});

  @override
  State<WordsList> createState() => _WordsListState();
}

class _WordsListState extends State<WordsList> {
  late TextEditingController wordSearchController;
  int length = 0;
  @override
  void initState() {
    super.initState();
    wordSearchController = TextEditingController();
    wordSearchController.addListener(() {
      setState(() => length = wordSearchController.text.length);
    });
  }

  @override
  void dispose() {
    super.dispose();
    wordSearchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          WordListText(),
          WordsListCard()
        ],
      ),
    );
  }

  Widget SearchTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchCustomField(
            controller: wordSearchController,
            length: length,
            onChanged: (value) {
              setState(() {
              });
            }),
        SizedBox(height: 10,),
        Divider(
          height: 10,
          color: Colors.black54,
        ),
      ],
    );
  }

  Widget WordListText() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Words List",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
              onPressed: () async {
    
              },
              icon: Icon(Icons.refresh,size: 25,color: primaryThemeColor))
        ],
      ),
    );
  }
}

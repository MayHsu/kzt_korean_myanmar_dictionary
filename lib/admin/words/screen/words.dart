import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/words/screen/word_detail.dart';
import 'package:kzt_dictionary/admin/words/widget/words_list.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/constant/color.dart';

class Words extends StatefulWidget {
  static const String routeName = '/words-screen';
  const Words({super.key});

  @override
  State<Words> createState() => _WordsState();
}

class _WordsState extends State<Words> {
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
    return Scaffold(
        appBar: CustomAppBar(
          title: "Words",
          automaticallyImplyLeading: true,
          
        ),
        body: WordsList(),
        floatingActionButton: AddWordButton(),);
  }

  Widget AddWordButton() {
    return FloatingActionButton(
      backgroundColor: secondaryThemeColor,
      elevation: 0,
      onPressed: (){
        Navigator.of(context).pushNamed(WordDetail.routeName);
      },
      child: Icon(Icons.add),
    );
  }

}

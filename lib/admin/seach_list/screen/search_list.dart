import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/words/screen/word_detail.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/constant/color.dart';

class SearchList extends StatelessWidget {
  static const String routeName = '/search-list-screen';
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            CustomAppBar(title: "Search List", automaticallyImplyLeading: true),
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
                      children: [
                        Container(
                          width: 30,
                          margin: EdgeInsets.only(left: 15),
                          child: Text("${index + 1}"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "고양이",
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_box,
                              size: 20,
                              color: primaryThemeColor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete,
                              size: 20,
                              color: redColor,
                            )),
                      ],
                    )));
          },
          separatorBuilder: (context, index) {
            return SizedBox();
          },
        ));
  }
}

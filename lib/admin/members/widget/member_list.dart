import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/members/widget/member_list_card.dart';
import 'package:kzt_dictionary/common/search_custom_textfield.dart';
import 'package:kzt_dictionary/constant/color.dart';

class MemberList extends StatefulWidget {
  MemberList(
      {super.key,});

  @override
  State<MemberList> createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  late TextEditingController memberSearchController;
  int length = 0;
  @override
  void initState() {
    super.initState();
    memberSearchController = TextEditingController();
    memberSearchController.addListener(() {
      setState(() => length = memberSearchController.text.length);
    });
  }

  @override
  void dispose() {
    super.dispose();
    memberSearchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          MemberListText(),
          MemberListCard()
        ],
      ),
    );
  }

  Widget SearchTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchCustomField(
            controller: memberSearchController,
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

  Widget MemberListText() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Member List",
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

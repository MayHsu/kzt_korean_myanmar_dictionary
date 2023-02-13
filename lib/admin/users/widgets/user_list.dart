import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/users/widgets/user_list_card.dart';
import 'package:kzt_dictionary/common/search_custom_textfield.dart';
import 'package:kzt_dictionary/constant/color.dart';

class UsersList extends StatefulWidget {
  UsersList(
      {super.key,});

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  late TextEditingController userSearchController;
  int length = 0;
  @override
  void initState() {
    super.initState();
    userSearchController = TextEditingController();
    userSearchController.addListener(() {
      setState(() => length = userSearchController.text.length);
    });
  }

  @override
  void dispose() {
    super.dispose();
    userSearchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          UsersListText(),
          UserListCard()
        ],
      ),
    );
  }

  Widget SearchTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchCustomField(
            controller: userSearchController,
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

  Widget UsersListText() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "Users List",
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

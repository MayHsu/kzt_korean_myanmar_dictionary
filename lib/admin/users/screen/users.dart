import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/users/widgets/user_list.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';

class Users extends StatelessWidget {
  static const String routeName = '/users-screen';
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Users",
          automaticallyImplyLeading: true,
          
        ),
        body: UsersList());
  }

}

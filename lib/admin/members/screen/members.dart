import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/members/widget/member_list.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';

class Members extends StatelessWidget {
  static const String routeName = '/members-screen';
  const Members({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Members",
          automaticallyImplyLeading: true,
          
        ),
        body: MemberList());
  }

}

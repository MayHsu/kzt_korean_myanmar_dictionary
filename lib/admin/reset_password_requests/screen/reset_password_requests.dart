import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/reset_password_requests/widgets/reset_password_list.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';

class ResetPasswordRequests extends StatelessWidget {
  static const String routeName = '/reset-password-screen';
  const ResetPasswordRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Reset Password Requests",
          automaticallyImplyLeading: true,
          
        ),
        body: ResetPasswordList());
  }

}

import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/admin_dashboard/screen/admin_dashboard.dart';
import 'package:kzt_dictionary/auth/auth_commom_widgets/auth_custom_textfield.dart';
import 'package:kzt_dictionary/auth/auth_commom_widgets/header_clippath.dart';
import 'package:kzt_dictionary/auth/register/register.dart';
import 'package:kzt_dictionary/constant/color.dart';
import 'package:kzt_dictionary/home/screen/home.dart';

class Login extends StatefulWidget {
  static const String routeName = '/login-screen';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryThemeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: Colors.grey.shade100,
                  width: maxWidth,
                 height: maxHeight * 0.4,
                child: SafeArea(child: Center(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Logo(maxWidth,maxHeight),
                    TitleText(),
                    Spacer()
                  ],
                )))),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  color: primaryThemeColor,
                  child: Column(
                    children: [
                      // Logo(maxWidth, maxHeight),
                      // TitleText(),
                      LoginTitleText(),
                      EmailTextfield(),
                      PasswordTextfield(),
                      LoginButton(maxWidth, context),
                      CreateAccountTextButton(context),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Logo(double maxWidth, double maxHeight) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: maxWidth*0.25,
            image: AssetImage("assets/KZTLogoIconTransparent.png")),
          SizedBox(width: 10,),
          Image(
            width: maxWidth*0.35,
            image: AssetImage("assets/KZTTextTransparent.png")),
        ],
      ),
    );
  }

  Widget TitleText() {
    return Container(
      margin: EdgeInsets.only(bottom:40,top: 10),
      child: FittedBox(
        child: Text(
          "Korean Myanmar Dictionary",
          style: TextStyle(
              fontSize: 22, 
              color: primaryThemeColor, 
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget LoginTitleText() {
    return Container(
      margin: EdgeInsets.only(bottom: 15,top: 20),
      child: Text(
        "LOGIN",
        style: TextStyle(
            fontSize: 25, color: whiteColor, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget EmailTextfield() {
    return AuthCustomTextField(
      hintText: "Email",
      iconData: Icons.email,
      iconSize: 23,
      controller: emailController,
    );
  }

  Widget PasswordTextfield() {
    return AuthCustomTextField(
      hintText: "Password",
      iconData: Icons.lock,
      iconSize: 23,
      needObscureText: true,
      controller: passwordController, 
      needSuffixIcon: true,
    );
  }

  Widget LoginButton(double maxWidth, BuildContext context) {
    return Container(
      width: maxWidth * 0.7,
      height: 50,
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton(
          onPressed: (){
             if(passwordController.text == "admin"){
              emailController.clear();
              passwordController.clear();
              Navigator.of(context).pushNamed(AdminDashboard.routeName);
             }else{
              Navigator.of(context).pushNamed(Home.routeName);
             }
          },
          style: ElevatedButton.styleFrom(
              foregroundColor: primaryThemeColor, backgroundColor: whiteColor),
          child: Text("Login", style: TextStyle(fontSize: 18))),
    );
  }

  Widget CreateAccountTextButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: TextStyle(color: white70Color),
            ),
            TextButton(
                onPressed: ()=>Navigator.of(context).pushNamed(Register.routeName),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: whiteColor),
                ))
          ],
        ));
  }
}

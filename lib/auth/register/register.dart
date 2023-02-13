import 'package:flutter/material.dart';
import 'package:kzt_dictionary/auth/auth_commom_widgets/auth_custom_textfield.dart';
import 'package:kzt_dictionary/auth/auth_commom_widgets/header_clippath.dart';
import 'package:kzt_dictionary/constant/color.dart';

class Register extends StatefulWidget {
  static const String routeName = '/register-screen';
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late TextEditingController usernameController;
    late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
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
                      RegisterTitleText(),
                      UsernameTextfield(),
                      EmailTextfield(),
                      PasswordTextfield(),
                      RegisterButton(maxWidth, context),
                      SignInAccountTextButton(context),
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

  Widget RegisterTitleText() {
    return Container(
      margin: EdgeInsets.only(bottom: 15,top: 20),
      child: Text(
        "REGISTER",
        style: TextStyle(
            fontSize: 25, color: whiteColor, fontWeight: FontWeight.w600),
      ),
    );
  }

    Widget UsernameTextfield() {
    return AuthCustomTextField(
      hintText: "Username",
      iconData: Icons.person,
      iconSize: 25,
      controller: usernameController,
      
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

  Widget RegisterButton(double maxWidth, BuildContext context) {
    return Container(
      width: maxWidth * 0.7,
      height: 50,
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
              foregroundColor: primaryThemeColor, backgroundColor: whiteColor),
          child: Text("Register", style: TextStyle(fontSize: 18))),
    );
  }

  Widget SignInAccountTextButton(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(color: white70Color),
            ),
            TextButton(
                onPressed: ()=>Navigator.of(context).pop(),
                child: Text(
                  "Sign In",
                  style: TextStyle(color: whiteColor),
                ))
          ],
        ));
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kzt_dictionary/auth/login/screen/login.dart';
import 'package:kzt_dictionary/constant/color.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int secondsRemaining = 3;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      }
    });
    Timer(Duration(seconds: 4), () {
     Navigator.of(context).pushReplacementNamed(Login.routeName);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [KZTBGLogo(),Loader()],
        ));
  }

  Widget KZTBGLogo() {
    return Image(
        fit: BoxFit.fill,
        image: AssetImage(
          "assets/KZTBGPhoto.jpg",
        ),
    );
  }

  Widget Loader() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Column(
              children: [
                Expanded(child: Container()),
                SpinKitThreeBounce(
                  color: whiteColor,
                  size: 20,
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

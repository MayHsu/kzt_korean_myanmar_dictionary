import 'package:flutter/material.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/constant/color.dart';

class Detail extends StatelessWidget {
  static const String routeName = '/detail-screen';
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            title: "Result",
            automaticallyImplyLeading: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: white70Color,
                    )),
              )
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "고양이",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red.shade400,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: black54Color,
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, bottom: 40),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "ကြောင်။",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        IconButton(onPressed: (){

                        }, icon: Icon(Icons.copy))
                      ],
                    )),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: black54Color,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Images",
                    style: TextStyle(fontSize: 18, 
                    fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "No image to display",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

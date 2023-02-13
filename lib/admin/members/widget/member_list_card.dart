import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';

class MemberListCard extends StatefulWidget {
  const MemberListCard({super.key});

  @override
  State<MemberListCard> createState() => _MemberListCardState();
}

class _MemberListCardState extends State<MemberListCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
              elevation: 3,
              child: ExpansionTile(
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                textColor: primaryThemeColor,
                iconColor: primaryThemeColor,
                tilePadding: EdgeInsets.symmetric(horizontal: 15),
                title: MemberListTitle(index),
                children: [
                  Username(),
                  Email(),
                  UserId(index),
                  MemberExpireDate(),
                  MembershipButton(),
                ],
              ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox();
        },
      ),
    );
  }

  Widget MemberListTitle(int index) {
    return Row(
      children: [
        Container(
          width: 30,
          child: Text(
            "${index + 1}",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
        Expanded(
            child: Text(
          "Member ID - ${index + 1}34657",
          style: TextStyle(
              fontSize: 16, 
              fontWeight: FontWeight.w400),
        )),
      ],
    );
  }

  Widget Username() {
    return Padding(
      padding: const EdgeInsets.only(left: 45),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Username        -  ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "Mg Mg",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Email() {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Email                -  ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "mgmg@gmail.com",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget UserId(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "User ID             -  ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "${index}23543",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

    Widget MemberExpireDate() {
    return Padding(
      padding: const EdgeInsets.only(left: 45, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Expired date   -  ",
              style: TextStyle(fontSize: 15),
            ),
          ),
          Expanded(
            child: Container(
              child: Text(
                "10-11-2024",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget MembershipButton() {
    return Padding(
      padding: EdgeInsets.only(left: 45, right: 18, bottom: 10, top: 10),
      child: 
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: primaryThemeColor),
                onPressed: () {
                  
                },
                child: Text(
                  "Membership Extension")),
          ),
    );
  }
}

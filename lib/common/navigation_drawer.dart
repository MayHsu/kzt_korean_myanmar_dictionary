import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';
import 'package:kzt_dictionary/favorites/screen/favorites.dart';
import 'package:kzt_dictionary/history/screen/history.dart';
import 'package:kzt_dictionary/home/widgets/custom_menu_listtile.dart';

class NavigationMenuDrawer extends StatelessWidget {
  final bool admin;
  const NavigationMenuDrawer({super.key, required this.admin});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [HeaderPath(context), MenuItems(context)],
        ),
      ),
    );
  }

  Widget HeaderPath(BuildContext context) {
    return Container(
      color: primaryThemeColor,
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top + 25, bottom: 25),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey.shade200,
            child: Center(
              child: Text(
                "K",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    color: primaryThemeColor),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Khant Thura Hlaing",
            style: TextStyle(fontSize: 18, color: whiteColor),
          ),
          Text(
            "ktyh@gmail.com",
            style: TextStyle(fontSize: 14, color: white70Color),
          ),
        ],
      ),
    );
  }

  Widget MenuItems(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, right: 10),
      child: Wrap(
        runSpacing: 4,
        children: [
          CustomMenuListTile(
              title: "About Us", iconData: Icons.info_outline, onTap: () {}),
          CustomMenuListTile(
              title: "Contact Us",
              iconData: Icons.phone_outlined,
              onTap: () {}),
          CustomMenuListTile(
              title: "Language",
              iconData: Icons.language_outlined,
              onTap: () {}),
          CustomMenuListTile(
              title: "Change Password",
              iconData: Icons.lock_outline,
              onTap: () {}),
          admin
              ? Container()
              : CustomMenuListTile(
                  title: "Favorites",
                  iconData: Icons.favorite_outline,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(Favorites.routeName);
                  }),
          admin
              ? Container()
              : CustomMenuListTile(
                  title: "History",
                  iconData: Icons.history_outlined,
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed(History.routeName);
                  }),
          CustomMenuListTile(
              title: "Version", iconData: Icons.update_outlined, onTap: () {}),
          CustomMenuListTile(
              title: "Logout", iconData: Icons.logout_outlined, onTap: () {}),
        ],
      ),
    );
  }
}

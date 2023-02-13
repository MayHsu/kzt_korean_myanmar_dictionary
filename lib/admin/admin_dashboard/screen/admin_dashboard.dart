import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/admin_dashboard/widget/category_cards.dart';
import 'package:kzt_dictionary/admin/members/screen/members.dart';
import 'package:kzt_dictionary/admin/reset_password_requests/screen/reset_password_requests.dart';
import 'package:kzt_dictionary/admin/save_words/screen/save_words.dart';
import 'package:kzt_dictionary/admin/seach_list/screen/search_list.dart';
import 'package:kzt_dictionary/admin/splash_Ad/screen/splash_Ad.dart';
import 'package:kzt_dictionary/admin/text_Ad/screen/text_ad.dart';
import 'package:kzt_dictionary/admin/users/screen/users.dart';
import 'package:kzt_dictionary/admin/words/screen/words.dart';
import 'package:kzt_dictionary/constant/color.dart';
import 'package:kzt_dictionary/home/widgets/home_header_field.dart';
import 'package:kzt_dictionary/common/navigation_drawer.dart';

class AdminDashboard extends StatefulWidget {
  static const String routeName = '/admin-screen';
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.grey.shade100,
      endDrawer: NavigationMenuDrawer(
        admin: true,
      ),
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBarWidget(),
      body: GridView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        physics: ClampingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, mainAxisExtent: 120),
        children: [
          CategoryCards(
              icon: Icons.list_alt,
              title: "Words",
              onTap: () => Navigator.of(context).pushNamed(Words.routeName)),
          CategoryCards(
              icon: Icons.search_off_outlined,
              title: "Search List",
              onTap: () =>
                  Navigator.of(context).pushNamed(SearchList.routeName)),
          CategoryCards(
              icon: Icons.save_alt_outlined,
              title: "Save Words",
              onTap: () =>
                  Navigator.of(context).pushNamed(SaveWords.routeName)),
          CategoryCards(
              icon: Icons.people_outline,
              title: "App Users",
              onTap: () => Navigator.of(context).pushNamed(Users.routeName)),
          CategoryCards(
              icon: Icons.people_alt_outlined,
              title: 'Member',
              onTap: () => Navigator.of(context).pushNamed(Members.routeName)),
          CategoryCards(
              icon: Icons.lock_outline_rounded,
              title: "Reset Password Requests",
              onTap: () => Navigator.of(context)
                  .pushNamed(ResetPasswordRequests.routeName)),
          CategoryCards(
              icon: Icons.slideshow_outlined,
              title: "Splash Ads",
              onTap: () =>
                  Navigator.of(context).pushNamed(SplashAd.routeName)),
          CategoryCards(
              icon: Icons.ads_click_outlined,
              title: "Text Ads",
              onTap: () =>
                  Navigator.of(context).pushNamed(TextAd.routeName)),
        ],
      ),
    );
  }

  PreferredSize AppBarWidget() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        backgroundColor: primaryThemeColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [Container()],
        flexibleSpace: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: HomeHeaderField(
                drawerKey: _key,
              )),
        ),
      ),
    );
  }
}

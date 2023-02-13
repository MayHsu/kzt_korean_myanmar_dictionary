import 'package:flutter/material.dart';
import 'package:kzt_dictionary/constant/color.dart';
import 'package:kzt_dictionary/detail/screen/detail.dart';
import 'package:kzt_dictionary/home/widgets/home_header_field.dart';
import 'package:kzt_dictionary/common/navigation_drawer.dart';
import 'package:kzt_dictionary/home/widgets/search_bar.dart';
import 'package:marquee/marquee.dart';

class Home extends StatefulWidget {
  static const String routeName = '/home-screen';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        backgroundColor: Colors.grey.shade100,
        endDrawer: NavigationMenuDrawer(admin: false,),
        endDrawerEnableOpenDragGesture: false,
        appBar: AppBarWidget(),
        bottomNavigationBar: Container(
            color: primaryThemeColor,
            height: 40,
            width: double.infinity,
            child: Marquee(
              text: 'Some sample text that takes some space.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: whiteColor),
              blankSpace: MediaQuery.of(context).size.width,
              velocity: 25,
              textDirection: TextDirection.rtl,
            )),
        body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              child: ListTile(
                onTap: () => Navigator.of(context).pushNamed(Detail.routeName),
                title: Text(
                  "고양이",
                  style: TextStyle(
                      color: redColor,
                      fontSize: 16,
                      fontWeight:
                          index == 0 ? FontWeight.w600 : FontWeight.normal),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return index == 0
                ? Divider(
                    height: 20,
                    thickness: 0.5,
                    color: black54Color,
                  )
                : SizedBox();
          },
        ));
  }

  PreferredSize AppBarWidget() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: AppBar(
        backgroundColor: primaryThemeColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [Container()],
        flexibleSpace: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeHeaderField(
                    drawerKey: _key,
                  ),
                  SearchBar()
                ],
              )),
        ),
      ),
    );
  }
}

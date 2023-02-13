import 'package:flutter/material.dart';
import 'package:kzt_dictionary/admin/admin_dashboard/screen/admin_dashboard.dart';
import 'package:kzt_dictionary/admin/members/screen/members.dart';
import 'package:kzt_dictionary/admin/reset_password_requests/screen/reset_password_requests.dart';
import 'package:kzt_dictionary/admin/save_words/screen/save_words.dart';
import 'package:kzt_dictionary/admin/seach_list/screen/search_list.dart';
import 'package:kzt_dictionary/admin/splash_Ad/screen/splash_Ad.dart';
import 'package:kzt_dictionary/admin/text_Ad/screen/text_ad.dart';
import 'package:kzt_dictionary/admin/users/screen/users.dart';
import 'package:kzt_dictionary/admin/words/screen/word_detail.dart';
import 'package:kzt_dictionary/admin/words/screen/words.dart';
import 'package:kzt_dictionary/auth/login/screen/login.dart';
import 'package:kzt_dictionary/auth/register/register.dart';
import 'package:kzt_dictionary/detail/screen/detail.dart';
import 'package:kzt_dictionary/favorites/screen/favorites.dart';
import 'package:kzt_dictionary/history/screen/history.dart';
import 'package:kzt_dictionary/home/screen/home.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Login.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Login());
    case Register.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Register());
    case Home.routeName:
      return MaterialPageRoute(settings: routeSettings, builder: (_) => Home());
    case Detail.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Detail());
    case Favorites.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Favorites());
    case History.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => History());
    case AdminDashboard.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => AdminDashboard());
    case Words.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Words());
    case WordDetail.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => WordDetail());
    case SearchList.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => SearchList());
    case SaveWords.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => SaveWords());
    case Users.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Users());
    case Members.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Members());
    case ResetPasswordRequests.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => ResetPasswordRequests());
    case TextAd.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => TextAd());
    case SplashAd.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => SplashAd());
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => Scaffold(
                body: Center(
                  child: Text("Page does not found"),
                ),
              ));
  }
}

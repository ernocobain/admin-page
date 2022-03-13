import 'package:admin/pages/dashboard/dasboard_page.dart';
import 'package:admin/pages/post/add_page/add_page.dart';
import 'package:admin/pages/post/add_post/add_post_page.dart';
import 'package:admin/pages/post/trash/trash_page.dart';
import 'package:admin/pages/settings/settings_page.dart';
import 'package:admin/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Dhikrama Admin",
    debugShowCheckedModeBanner: false,
    initialRoute: HomePage.id,
    routes: _routes,
  ));
}

Map<String, WidgetBuilder> get _routes {
  return {
    HomePage.id: (context) => const HomePage(),
    DashboardPage.id: (context) => const DashboardPage(),
    AddPostPage.id: (context) => const AddPostPage(),
    AddPage.id: (context) => const AddPage(),
    TrashPage.id: (context) => const TrashPage(),
    SettingsPage.id: (context) => const SettingsPage(),
  };
}

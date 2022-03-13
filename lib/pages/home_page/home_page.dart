import 'package:admin/pages/dashboard/dasboard_page.dart';
import 'package:admin/pages/home_page/home_page.dart';
import 'package:admin/pages/post/add_page/add_page.dart';
import 'package:admin/pages/post/add_post/add_post_page.dart';
import 'package:admin/pages/post/trash/trash_page.dart';
import 'package:admin/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'widgets/admin_menu_item.dart';

class HomePage extends StatefulWidget {
  static const String id = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _WebAppState();
}

class _WebAppState extends State<HomePage> {
  Widget _selectedPage = const DashboardPage();
  _currentPage(item) {
    switch (item.route) {
      case DashboardPage.id:
        setState(() {
          _selectedPage = const DashboardPage();
        });
        break;
      case AddPostPage.id:
        setState(() {
          _selectedPage = const AddPostPage();
        });
        break;
      case AddPage.id:
        setState(() {
          _selectedPage = const AddPage();
        });
        break;
      case TrashPage.id:
        setState(() {
          _selectedPage = const TrashPage();
        });
        break;
      case SettingsPage.id:
        setState(() {
          _selectedPage = const SettingsPage();
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dashboard"),
      ),
      sideBar: SideBar(
        header: Container(),
        items: adminMenuItems,
        selectedRoute: DashboardPage.id,
        onSelected: (item) {
          _currentPage(item);
        },
      ),
      body: SingleChildScrollView(
        child: _selectedPage,
      ),
    );
  }
}

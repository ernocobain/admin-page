import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import '../../dashboard/dasboard_page.dart';
import '../../post/add_page/add_page.dart';
import '../../post/add_post/add_post_page.dart';
import '../../post/trash/trash_page.dart';
import '../../settings/settings_page.dart';

const List<MenuItem> adminMenuItems = [
  MenuItem(
    title: "Dashboard",
    icon: Icons.dashboard_sharp,
    route: DashboardPage.id,
  ),
  MenuItem(
    title: "Post",
    icon: Icons.post_add_sharp,
    children: [
      MenuItem(
        title: "Add Post",
        icon: Icons.post_add,
        route: AddPostPage.id,
      ),
      MenuItem(
        title: "Add Page",
        icon: Icons.pages,
        route: AddPage.id,
      ),
      MenuItem(
        title: "Trash",
        icon: Icons.post_add_sharp,
        route: TrashPage.id,
      )
    ],
  ),
  MenuItem(
    title: "Plugin",
    icon: Icons.abc,
    route: "/plugin",
  ),
  MenuItem(
    title: "Settings",
    icon: Icons.settings,
    route: SettingsPage.id,
  ),
];

import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

void main() {
  runApp(const MaterialApp(
    title: "Dhikrama Admin",
    debugShowCheckedModeBanner: false,
    home: WebApp(),
  ));
}

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dashboard"),
      ),
      body: Text(("test")),
      sideBar: const SideBar(
        items: [
          MenuItem(
            title: "Dashboard",
            icon: Icons.dashboard_sharp,
            route: "/dashboard",
          ),
          MenuItem(
            title: "Post",
            icon: Icons.post_add_sharp,
            route: "/post",
            children: [
              MenuItem(
                title: "Add Post",
                icon: Icons.post_add,
                route: "/post-add",
              ),
              MenuItem(
                title: "Add Page",
                icon: Icons.pages,
                route: "/page-add",
              ),
              MenuItem(
                title: "Trash",
                icon: Icons.post_add_sharp,
                route: "/trash-post",
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
            route: "/settings",
          ),
        ],
        selectedRoute: '/',
      ),
    );
  }
}

// ignore_for_file: must_be_immutable

library appbar_widget;

import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, required this.title, required this.tabsName})
      : super(key: key);

  final String title;
  final List<Widget> tabsName;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amberAccent,
      title: Text(title),
      centerTitle: true,
      bottom: TabBar(
        tabs: tabsName,
      ),
    );
  }
}

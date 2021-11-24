import 'package:flutter/material.dart';

import '../constant/my_color.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? appBarTitle;
  final Color? color;
  final bool? centerTitle;
  final List<Widget>? action;

  @override
  final Size preferredSize; // default is 56.0

  MyAppBar(
      {@required this.appBarTitle, Key? key, this.color, this.centerTitle, this.action})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle ?? false,
      actions: action,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: color ?? kWhite
      ),
      elevation: 0,
      title: Text(
        appBarTitle!,
        style: TextStyle(
            color: color ?? kBlack, fontWeight: FontWeight.w600),
      ),
    );
  }
}
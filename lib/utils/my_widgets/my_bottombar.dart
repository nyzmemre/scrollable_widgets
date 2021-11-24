import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorWeight: 3,
      tabs: [
        Text("Sliver", style: Theme.of(context).textTheme.bodyText1),
        Text("GridView", style: Theme.of(context).textTheme.bodyText1),
        Text("SGridView", style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}

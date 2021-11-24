import 'package:flutter/material.dart';
import 'package:scrollable_widgets/screens/sc_gridview.dart';
import 'package:scrollable_widgets/screens/sc_silver.dart';
import 'package:scrollable_widgets/utils/my_widgets/my_appbar.dart';
import 'package:scrollable_widgets/utils/my_widgets/my_bottombar.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: MyBottomBar(),
          //appBar: MyAppBar(appBarTitle: "HomePage"),
          body: TabBarView(children: [
SCSilver(),
SCSilver(),
            SCGridView()])
        ),
      )
    );
  }

}


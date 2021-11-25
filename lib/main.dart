import 'package:flutter/material.dart';

import 'view/sc_silver.dart';
import 'view/sc_gridview.dart';
import 'view/sc_sgridview.dart';
import 'utils/my_widgets/my_bottombar.dart';


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
            SCGridView(),
            SCSGridView()])
        ),
      )
    );
  }

}


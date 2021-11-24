import 'package:flutter/material.dart';

class SCGridView extends StatelessWidget {
  const SCGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
        crossAxisSpacing: 2,
        mainAxisSpacing:2,
        ), itemBuilder: (context, int index) {
      return Container(alignment: Alignment.center,color: Colors.teal, child: Text("Alan $index"),);
    });
  }
}

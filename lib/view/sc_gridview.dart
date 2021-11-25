import 'package:flutter/material.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';
import 'package:scrollable_widgets/utils/constant/lists.dart';

class SCGridView extends StatelessWidget {
  const SCGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: gridImages.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (context, int index) {
          return Card(
            elevation: 2,
            child: Column(
              children: [
                Container(
                  padding: context.lowPadding,
                  alignment: Alignment.center,
                  child: Image.network(gridImages[index]),
                ),
                Text("Product")
              ],
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scrollable_widgets/utils/constant/lists.dart';

class SCSGridView extends StatelessWidget {
  const SCSGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverStaggeredGrid.countBuilder(
          crossAxisCount: 4,
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) => Card(
            child: Column(
              children: <Widget>[
                Image.network(images[index]),
                Text("Product"),
              ],
            ),
          ),
          staggeredTileBuilder: (int index) =>
          new StaggeredTile.fit(2),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
        ]
      ),
    );
  }
}

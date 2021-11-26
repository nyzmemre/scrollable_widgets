import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scrollable_widgets/utils/constant/lists.dart';
import 'package:scrollable_widgets/utils/my_widgets/details.dart';
import 'package:scrollable_widgets/view_model/shoes_view_model.dart';

class SCSGridView extends StatelessWidget {
  const SCSGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
          SliverStaggeredGrid.countBuilder(
            crossAxisCount: 4,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) => Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(
                              heroTag: ShoesViewModel.instance
                                  .shoesSGridList[index].shoesTag,
                              list:
                              ShoesViewModel.instance.shoesSGridList,
                              index: index)));
                },
                child: Column(
                  children: <Widget>[
                    Hero(
                        tag: ShoesViewModel.instance.shoesSGridList[index].shoesTag,
                        child: Image.network("${ShoesViewModel.instance.shoesSGridList[index].url}",
                          fit: BoxFit.fill,
                          errorBuilder: (BuildContext context, Object exception,
                              StackTrace? stackTrace) {

                            return const CircularProgressIndicator();
                          },
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: (loadingProgress.expectedTotalBytes != null)
                                    ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        )),
                    Text("Price : ${ShoesViewModel.instance.shoesSGridList[index].price} \$"),
                  ],
                ),
              ),
            ),
            staggeredTileBuilder: (int index) =>
            new StaggeredTile.fit(2),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
          ]
        ),
      ),
    );
  }
}

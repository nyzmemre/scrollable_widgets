import 'package:flutter/material.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';
import 'package:scrollable_widgets/utils/constant/lists.dart';
import 'package:scrollable_widgets/utils/my_widgets/details.dart';
import 'package:scrollable_widgets/view_model/shoes_view_model.dart';

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
          return Hero(
            tag: ShoesViewModel.instance.shoesGridList[index].shoesTag,
            child: Card(
              elevation: 2,
              child: Column(
                children: [
                  Container(
                    padding: context.lowPadding,
                    alignment: Alignment.center,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(
                                      heroTag: ShoesViewModel.instance
                                          .shoesGridList[index].shoesTag,
                                      list:
                                          ShoesViewModel.instance.shoesGridList,
                                      index: index)));
                        },
                        child: Image.network(
                            "${ShoesViewModel.instance.shoesGridList[index].url}")),
                  ),
                  Text(
                      "Price : ${ShoesViewModel.instance.shoesGridList[index].price} \$")
                ],
              ),
            ),
          );
        });
  }
}

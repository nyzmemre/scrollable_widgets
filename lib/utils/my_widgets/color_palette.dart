import 'package:flutter/material.dart';

import '../constant/extensions.dart';
import '../constant/my_color.dart';
import '../../view_model/order_view_model.dart';

class ColorPalette extends StatelessWidget {
  final OrderViewModel data;
  const ColorPalette({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      height: context.width * 0.075,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: data.colorList.length,
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: () {
                data.isSelected(index, data.colorList);
              },
              child: (data.colorList[index].isSelected)
                  ? AnimatedContainer(
                  child: CircleAvatar(
                    backgroundColor: data.colorList[index].color,
                    child: Icon(
                      Icons.done,
                      color: kWhite,
                    ),
                  ),
                  duration: Duration(seconds: 1))
                  : CircleAvatar(
                backgroundColor: data.colorList[index].color,
              ),
            );
          }),
    );
  }
}

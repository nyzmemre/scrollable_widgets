import 'package:flutter/material.dart';

import '../constant/extensions.dart';
import '../../view_model/order_view_model.dart';

class SizeChart extends StatelessWidget {
  final OrderViewModel data;
  const SizeChart({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      height: context.width * 0.075,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: data.sizeChart.length,
          itemBuilder: (context, int index) {
            return Padding(
              padding: context.horizontalVeryLowPadding,
              child: InkWell(
                  onTap: () {
                    data.isSelected(index, data.sizeChart);
                  },
                  child: (data.sizeChart[index].isSelected)
                      ? Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1)),
                      child: Padding(
                        padding: context.veryLowPadding,
                        child: Text(
                          "${data.sizeChart[index].size}",
                          textAlign: TextAlign.center,
                        ),
                      ))
                      : Padding(
                    padding: context.lowPadding,
                    child: Text(
                      "${data.sizeChart[index].size}",
                      textAlign: TextAlign.center,
                    ),
                  )),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';

import '../constant/extensions.dart';
import '../constant/my_color.dart';
import '../../view_model/order_view_model.dart';

class Quantity extends StatelessWidget {
  final OrderViewModel data;
  const Quantity({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: context.lowPadding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: kGrey)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            context.horFifteenSizedBox,
            counter(data.decreaseQuantity, "-"),
            context.horFifteenSizedBox,
            Text("${data.quantity}"),
            context.horFifteenSizedBox,
            counter(data.increaseQuantity, "+"),
            context.horFifteenSizedBox,
          ],
        ),
      ),
    );
  }
  InkWell counter(VoidCallback onTap, String text) {
    return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(color: kGrey),
        ));
  }
}

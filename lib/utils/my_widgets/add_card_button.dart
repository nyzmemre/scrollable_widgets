import 'package:flutter/material.dart';

import '../../model/shoes_model.dart';
import '../../view/order_detail.dart';
import '../../view_model/order_view_model.dart';

class AddCardButton extends StatelessWidget {
  final OrderViewModel data;
  final List<ShoesModel> list;
  final int index;
  const AddCardButton({Key? key, required this.data, required this.list, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
          onPressed: () {
            data.addToCard();
            if (data.orderDetails[0].url != null)
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderDetail(
                          imgURL: list[index].url,
                          color: data.orderDetails[0].color,
                          sizeChart: data.orderDetails[0].sizeChart,
                          quantity: data.orderDetails[0].quantity)));
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            elevation: 15.0,
          ),
          child: Text("Add to Cart")),
    );
  }
}

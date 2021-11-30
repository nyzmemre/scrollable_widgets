import 'package:flutter/material.dart';
import 'package:scrollable_widgets/utils/my_widgets/my_appbar.dart';

class OrderDetail extends StatelessWidget {

  final String? imgURL;
  final Color? color;
  final int? sizeChart;
  final int? quantity;


  const OrderDetail({Key? key,  required this.imgURL, required this.color, required this.sizeChart, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(appBarTitle: "Order Details"),
      body: Column(
        children: [
          Text("URL : $imgURL" ),
          Text("Color: $color"),
          Text("Size Chart: $sizeChart"),
          Text("Quantity: $quantity"),
        ],
      ),
    );
  }
}

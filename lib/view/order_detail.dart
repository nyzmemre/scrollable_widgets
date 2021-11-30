import 'package:flutter/material.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';
import 'package:scrollable_widgets/utils/constant/my_color.dart';
import 'package:scrollable_widgets/utils/my_widgets/my_appbar.dart';

class OrderDetail extends StatelessWidget {
  final String? imgURL;
  final Color? color;
  final int? sizeChart;
  final int? quantity;

  const OrderDetail(
      {Key? key,
      required this.imgURL,
      required this.color,
      required this.sizeChart,
      required this.quantity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(color: kBlack, appBarTitle: "Order Details"),
        body: SizedBox(
          height: context.width*0.2,
          child: Card(
            elevation: 3,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                Padding(
                  padding: context.lowPadding,
                  child: SizedBox(
                      height: context.width * 0.2,
                      child: Image.network("$imgURL")),
                ),

                expandedParent(context, Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Color: "),
                      Text("Quantity"),
                      Text("Size Chart")
                    ]),),
                expandedParent(context, Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: context.width * 0.05,
                        child: CircleAvatar(
                          backgroundColor: color,
                        ),
                      ),
                      Text("$quantity"),
                      Text("$sizeChart")
                    ]),)
              ])),
        ));
  }
  Widget expandedParent(BuildContext context, Widget child){
    return Expanded(
        flex: 1,
        child: Padding(
        padding: context.lowPadding,
          child: child,
    ));
  }
}
